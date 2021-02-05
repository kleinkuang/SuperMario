/////////////////////////////////////////////////////////////////////////////////////////////////////
// Module Name: ADC_Counter for SuperMario
// Module Content: Shared counter for on-chip Integrating ADCs, output MUX to cycle the ADC output.
// Version: V1.2
// Author: Junming Zeng
// Organisation: Imperial College London
// Date Created: 11/08/2019
// Last Modified: 28/08/2019
// Modification: V1.1: 1. duplicate hardware using generate for loop.
//                     2. update signal 
// Modification: V1.2: 1. include a debug mux to select between ADC out and counter.
// Modification V1.3: 1. remove reset_bar, built the inverter on chip.
//                    2. this should be the final version.
/////////////////////////////////////////////////////////////////////////////////////////////////////

module ADC_Counter(
	input  clk,
	input  n_reset,
	input  enable,
	input  [127:0] flag, 
	input  debug_mux,
	
	output reg reset,		    // flag to reset comparator
	output reg [7:0] ADC_OUT,
    output wire update           // Up when the ADC_OUT is valid
	);


reg [127:0] flag_buffer;		// register to store the comparator rising edge of 128 ADCs
reg [127:0] flag_changed;		// the rising edge of 128 comparators.
reg [8:0] main_counter;			// main counter, 9 bits to count from 0 to 310
genvar k;
reg [1023:0] ADC_OUT_buffer;		// ADC Output
reg [1023:0] ADC_result;		// Latch of ADC Output

// flag rising edge reset, happens at the end of conversion
always @ (posedge clk, negedge n_reset)
begin
	if (~n_reset)
		flag_buffer <= 128'd0;
	else if (reset)
		flag_buffer <= 128'd0;
	else
		flag_buffer <= flag;
end

// main counter 
always @(posedge clk, negedge n_reset)
begin
	if (~n_reset)
	begin
		main_counter <= 9'd0;
		reset <= 1'b1;
		ADC_OUT_buffer <= 1024'd0;
	end
	else if (enable)
	begin
		// counter {0, 48}, these 49 clock cycles are used to load the DAC value to the instrumentation amplifier. Keep the integrator reset
		if (main_counter < 9'd49)
		begin
			main_counter <= main_counter + 9'b1;
			reset <= 1'b1;
		end
		// counter {49} is used to set the integrator on
		else if (main_counter == 9'd49)
		begin
			reset <= 1'b0;
			main_counter <= main_counter + 9'b1;
		end
		// counter {306}, this clock cycle is used to store a off-ranged ADC value to the latch
		else if (main_counter == 9'd305)
		begin
			main_counter <= main_counter + 9'b1;			
		end
		// counter {306, 309}, these 4 clock cycles are used to latch the conversion value, and reset the integrator 
		else if (main_counter > 9'd305 && main_counter < 9'd310)
		begin
			main_counter <= main_counter + 9'b1;
			reset <= 1'b1;
			ADC_OUT_buffer <= ADC_result;
		end
		// counter {310} reset to a new cycle
		else if (main_counter == 9'd310)
		begin
			main_counter <= 9'd0;
			reset <= 1'b1;
		end
		// counter {50, 305} is used for the integration period and store the ADC value when the comparator is asserted
		else
		begin
			reset <= 1'b0;
			main_counter <= main_counter + 9'b1;	

		end
	end
	else
		main_counter <= 9'd0;
end

// 128 ADC value update
genvar i;				// 128 ADC
generate
	for (i = 0; i <= 127; i = i + 1)
	begin
		always @ (posedge clk, negedge n_reset)
		if (~n_reset)
		begin
			flag_changed[i] <= 1'b0;
			ADC_result[(8*i) +: 8] <= 8'd0;
		end
		else
		begin
		    if (main_counter <= 9'd49)
		    begin  
		        flag_changed[i] <= 1'b0;
		        ADC_result[(8*i) +: 8] <= 8'd0;
		    end
			else if (main_counter >= 50 && main_counter < 305)
			begin
				if (flag_buffer[i] == 1'b0 && flag[i] == 1'b1 && flag_changed[i] == 1'b0)
				begin
					ADC_result[(8*i) +: 8] <= main_counter - 6'd50;		
					flag_changed[i] <= 1'b1;
				end
			end
			else if (main_counter == 305)
				if (~flag_changed[i]) ADC_result[(8*i) +: 8] <= 8'd0;
		end
	end
endgenerate

// output MUX
reg update_int;

always @ (posedge clk, negedge n_reset)
begin
    if (~n_reset)
    begin
        //ADC_OUT <= 8'd0;
        update_int <= 1'b0;
    end    
    else
    begin
        // the ADC out is cycled between 0 and 127 clock cycles.
        if (main_counter <= 127)
        begin
            //if (debug_mux)
                //ADC_OUT <= main_counter;
            //else
            //begin
                //ADC_OUT <= ADC_OUT_buffer[8*main_counter +: 8];
                update_int <= 1'b1;
                //if(update)
                //    ADC_OUT <= ADC_OUT + 1;
            //end
        end     
        else
        begin
            //ADC_OUT <= 8'd0;
            update_int <= 1'b0;
        end    
    end
end

reg start;

always @ (posedge clk, negedge n_reset)
    if(~n_reset)
        start <= 1'b0;
    else
        if(main_counter==8'd129)
            start <= 1'b1;

//assign update = update_int & start;
assign update = update_int;

always @ (posedge clk, negedge n_reset)
begin
    if (~n_reset)
        ADC_OUT <= 8'd0;
    else
        if(update_int & start)
            ADC_OUT <= ADC_OUT + 1;
end

endmodule
