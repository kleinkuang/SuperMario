`timescale 1ns / 1ps

module Top_Digital(
    input clk,
    input n_reset,
    input SPI_FtoC,
    input CS,
    input [7:0] DAC_FPGA,
    input [127:0] Flag,
    
    output [1023:0] DAC_OUT_CHIP,
    output SPI_CtoF,
    output [7:0] S1_In,
    output EoF,
    output S2,
    output S3,
    output Min,
    output Med,
    output Max,
    output Mad,
    output reset,
    output [7:0] ADC_OUT,
    output update
    );
   
wire enable;
wire debug_mux;
    
CentralController u_CentralController(
    .clk(clk),
    .n_reset(n_reset),
    .SPI_FtoC(SPI_FtoC),
    .CS(CS),
    .DAC(DAC_FPGA),
    
    .DAC_OUT(DAC_OUT_CHIP),
    .SPI_CtoF(SPI_CtoF),
    .ADC_Counter_enable(enable),
    .column_out(S1_In),
    .EoF(EoF),
    .S2(S2),
    .S3(S3),
    .Min(Min),
    .Med(Med),
    .Max(Max),
    .Mad(Mad),
    .debug_mux(debug_mux)
    );
    
ADC_Counter u_ADC_Counter(
	.clk(clk),
    .n_reset(n_reset),
    .enable(enable),
    .flag(Flag), 
    .debug_mux(debug_mux),

    .reset(reset),           
    .ADC_OUT(ADC_OUT),
    .update(update)          
    );    
endmodule
