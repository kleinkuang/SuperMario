`timescale 1ns / 1ps
/////////////////////////////////////////////////////////////////////////////////////////////////////
// Module Name: CentralController for SuperMario
// Module Content: Central Controller, input SPI for receiving commands and perform chip operation
// Version: V2
// Author: Junming Zeng
// Organisation: Imperial College London
// Date Created: 13/08/2019
// Last Modified: 28/08/2019
// Modification: V2: 1. replace direct S1 control with decoders in 8to192decoder.v
//               V3: 1. decrease the array size to 128 x 128.
//                   2. debug_mux for output adc selection is added.
//                   3. Signal renamed.   
/////////////////////////////////////////////////////////////////////////////////////////////////////


module CentralController(
    input clk,
    input n_reset,
    input SPI_FtoC,
    input CS,
    input [7:0] DAC,
    
    output reg [1023:0] DAC_OUT,
    output SPI_CtoF,
    output reg ADC_Counter_enable,
    output [7:0] column_out,
    output reg EoF,
    output reg S2,
    output reg S3,
    output  Min,
    output  Med,
    output  Max,
    output  Mad,
    output debug_mux
    );

reg [2:0] mode;                                 // mode used to define chip operation
localparam Cycle = 3'b000;
localparam Cycle_wGain = 3'b001;
localparam DoubleSampling = 3'b010;
localparam SinglePixel = 3'b011;
localparam LoadDAC = 3'b100;
localparam IDLE = 3'b111;
localparam ADCReset = 3'b110;

reg [7:0] SPI_IN;                              // SPI 16 bits data from the FPGA   
wire [7:0] SPI_OUT;                            // SPI 16 bits data to the FPGA
reg [7:0] SPI_OUT_Shift;                       // SPI 16 bits buffer as shift register
reg spi_update;                                 // flag signal indicates spi value is ready
reg CS_buffer;
reg [8:0] ADC_counter;                          // the same counter as main_counter in ADC_Counter.v
reg [7:0] column;                               // the column index to indicate which column is selected
reg firsttime;                                  // flag indicating if it's buffer sample for the first time
reg column_mux;
reg [1023:0] DAC_OUT_buffer;

assign Min = (spi_update == 1)? SPI_IN[0] : 1'b0;
assign Med = (spi_update == 1)? SPI_IN[1] : 1'b0;
assign Max = (spi_update == 1)? SPI_IN[2] : 1'b0;
assign Mad = (spi_update == 1)? SPI_IN[3] : 1'b0;
assign debug_mux = (spi_update == 1)? SPI_IN[4] : 1'b0;
assign column_out = (column_mux == 1'b1) ? column : 8'd0;
// SPI counter
always @ (posedge clk, negedge n_reset)
begin
    if (~n_reset)
    begin
        CS_buffer <= 1'b1;
    end
    else
    begin
        CS_buffer <= CS;
    end    
end

always @ (posedge clk, negedge n_reset)
begin
    if (~n_reset)
    begin
        spi_update <= 1'b0;
    end
    else if (CS_buffer == 1'b0 && CS == 1'b1)
    begin
        spi_update <= 1'b1;
    end
    else if (CS_buffer == 1'b1 && CS == 1'b0)
    begin
        spi_update <= 1'b0;
    end        
end

// SPI Read    
always @ (posedge clk, negedge n_reset)
begin    
    if (~n_reset)
        SPI_IN <= 8'd0;
    else if (~CS)
        SPI_IN <= {SPI_IN[6:0], SPI_FtoC};
end

// SPI Write
always @ (posedge clk, negedge n_reset)
begin
    if (~n_reset)
        SPI_OUT_Shift <= 8'd0;
    else if (~CS)
        SPI_OUT_Shift <= {SPI_OUT_Shift[6:0], 1'b0};
    else
        SPI_OUT_Shift <= SPI_OUT;        
end
assign SPI_CtoF = SPI_OUT_Shift[7];
assign SPI_OUT = (spi_update == 1'b1)? SPI_IN : 8'd0;

always @ (posedge clk, negedge n_reset)
    if (~n_reset)
    begin
        mode <=  IDLE;
        ADC_counter <= 9'd0;
        ADC_Counter_enable <= 1'b0;
        column <= 8'd0;
        column_mux <= 1'b0;
        EoF <= 1'b0;
        S2 <= 1'b0;
        S3 <= 1'b0;
        firsttime <= 1'b1;
        DAC_OUT <= 1024'd0;
        DAC_OUT_buffer <= 1024'd0;
    end
    else 
    begin
        case (mode)
            IDLE:
            begin
                mode <= ADCReset;
                ADC_counter <= 9'd0;
            end
            
            ADCReset:
            begin                
                ADC_counter <= 9'd0;
                if (spi_update)
                begin
                    if (SPI_IN[7:5] == 3'b000)
                    begin
                        mode <= Cycle;
                        ADC_Counter_enable <= 1'b1;
                        column <= 8'd1;
                        S2 <= 1'b1;
                        S3 <= 1'b0;
                        firsttime <= 1'b1;
                    end
                    else if (SPI_IN[7:5] == 3'b001)
                    begin
                        if (firsttime)
                        begin
                            mode <= LoadDAC;                            
                            ADC_Counter_enable <= 1'b0;
                            column <= 8'd1;
                            S2 <= 1'b0;
                            S3 <= 1'b1;
                        end
                        else
                        begin
                            mode <= Cycle_wGain;                            
                            ADC_Counter_enable <= 1'b1;
                            column <= 8'd1;
                            S2 <= 1'b0;
                            S3 <= 1'b1;
                        end   
                    end
                    else if (SPI_IN[7:5] == 3'b010)
                    begin
                        mode <= LoadDAC;
                        ADC_Counter_enable <= 1'b0;
                        column <= 8'd1;
                        S2 <= 1'b1;
                        S3 <= 1'b0;
                        firsttime <= 1'b1;
                    end
                    else if (SPI_IN[7:5] == 3'b011)
                    begin
                        mode <= SinglePixel;
                        ADC_Counter_enable <= 1'b1;
                        S2 <= 1'b1;
                        S3 <= 1'b0;
                        EoF <= 1'b0;
                    end                     
                    else if (SPI_IN[7:5] == 3'b111)
                    begin
                        mode <= IDLE;
                    end
                    else if (SPI_IN[7:5] == 3'b110)
                    begin
                        mode <= ADCReset;
                    end                                   
                end
            end
            
            Cycle:                                             // Continuous Pixel Readout without gain.
            begin                
                if (ADC_counter < 308)
                begin                   
                    column_mux <= 1'b1;
                    ADC_counter <= ADC_counter + 9'b1;
                    EoF <= 1'b0;
                end
                else if (ADC_counter == 308)
                begin
                    column <= column + 8'b1;
                    ADC_counter <= ADC_counter + 9'b1;
                    column_mux <= 1'b0;
                    EoF <= 1'b0;
                end
                else if (ADC_counter == 309)
                begin                        
                    ADC_counter <= ADC_counter + 9'b1;
                    if (column == 129)
                    begin
                        column <= 8'd1;
                        EoF <= 1'b1;                                                
                        ADC_Counter_enable <= 1'b0;
                        S2 <= 1'b0;
                        S3 <= 1'b1;
                        mode <= ADCReset;
                    end
                    else
                        EoF <= 1'b0;
                end 
                else if (ADC_counter == 310)
                begin
                    ADC_counter <= 9'd0;
                    EoF <= 1'b0;                    
                end
                else  
                    ADC_counter <= 9'd0;       
            end
            
            LoadDAC:
            begin
                column_mux <= 1'b0;
                if(ADC_counter >= 128)
                begin
                    if (SPI_IN[7:5] == 3'b001)
                    begin
                        ADC_counter <= 8'd0;
                        DAC_OUT <= DAC_OUT_buffer;
                        mode <= Cycle_wGain;
                        firsttime <= 1'b0;
                        ADC_Counter_enable <= 1'b1;
                    end
                    else if (SPI_IN[7:5] == 3'b010)
                    begin
                        ADC_counter <= 8'd0;
                        DAC_OUT <= DAC_OUT_buffer;
                        mode <= DoubleSampling;
                        firsttime <= 1'b1;
                        ADC_Counter_enable <= 1'b1;
                    end    
                end    
                else
                begin
                    DAC_OUT_buffer[8 * (ADC_counter) +: 8] <= DAC;
                    ADC_counter <= ADC_counter + 9'b1;
                end
            end
            
            Cycle_wGain:                                             // Continuous Pixel Readout without gain.
            begin                
                if (ADC_counter < 128)
                begin                   
                    column_mux <= 1'b1;
                    ADC_counter <= ADC_counter + 9'b1;
                    EoF <= 1'b0;
                    DAC_OUT_buffer[8 * (ADC_counter) +: 8] <= DAC;
                end             
                else if (ADC_counter >= 128 && ADC_counter < 308)
                begin                   
                    column_mux <= 1'b1;
                    ADC_counter <= ADC_counter + 9'b1;
                    EoF <= 1'b0;
                end
                else if (ADC_counter == 308)
                begin
                    column <= column + 8'b1;
                    ADC_counter <= ADC_counter + 9'b1;
                    column_mux <= 1'b0;
                    EoF <= 1'b0;
                end
                else if (ADC_counter == 309)
                begin                        
                    ADC_counter <= ADC_counter + 9'b1;
                    DAC_OUT <= DAC_OUT_buffer;
                    if (column == 129)
                    begin
                        column <= 8'd1;
                        EoF <= 1'b1;                                                
                        ADC_Counter_enable <= 1'b0;
                        S2 <= 1'b0;
                        S3 <= 1'b1;
                        mode <= ADCReset;
                    end
                    else
                        EoF <= 1'b0;
                end 
                else if (ADC_counter == 310)
                begin
                    ADC_counter <= 9'd0;
                    EoF <= 1'b0;                    
                end
                else  
                    ADC_counter <= 9'd0;       
            end
                       
            DoubleSampling:                                  // continuous readout with one raw data and one differential data
            begin
                if (ADC_counter < 128)
                begin              
                    column_mux <= 1'b1;     
                    ADC_counter <= ADC_counter + 9'b1;
                    EoF <= 1'b0;
                    DAC_OUT_buffer[8 * (ADC_counter) +: 8] <= DAC;
                end                
                else if (ADC_counter >= 128 && ADC_counter < 308)
                begin              
                    column_mux <= 1'b1;     
                    ADC_counter <= ADC_counter + 9'b1;
                    EoF <= 1'b0;
                end
                else if (ADC_counter == 308)
                begin
                    if (firsttime)
                    begin
                        ADC_counter <= ADC_counter + 9'b1;
                        column_mux <= 1'b0;
                        EoF <= 1'b0;
                        firsttime <= 1'b0;   
                        S2 <= 1'b0;
                        S3 <= 1'b1;                 
                    end
                    else
                    begin
                        column <= column + 8'b1;
                        ADC_counter <= ADC_counter + 9'b1;
                        column_mux <= 1'b0;
                        EoF <= 1'b0;
                        firsttime <= 1'b1;
                        S2 <= 1'b1;
                        S3 <= 1'b0;  
                    end
                end
                else if (ADC_counter == 309)
                begin                        
                    column_mux <= 1'b0;
                    ADC_counter <= ADC_counter + 9'b1;
                    DAC_OUT <= DAC_OUT_buffer;
                    if (column == 129)
                    begin
                        column <= 8'd1;
                        EoF <= 1'b1;
                        mode <= ADCReset;
                        ADC_Counter_enable <= 1'b0;
                        S2 <= 1'b0;
                        S3 <= 1'b0;
                    end
                    else
                        EoF <= 1'b0;
                end 
                else if (ADC_counter == 310)
                begin
                    ADC_counter <= 9'd0;
                    column_mux <= 1'b0;
                    EoF <= 1'b0;                    
                end
                else  
                    ADC_counter <= 9'd0;
            end
                      
            default:
                mode <= IDLE;                    
        endcase
    end
               
endmodule
