// File:    spi_tb.sv
// Author:  Lei Kuang
// Date:    17th Janurary 2020
// @ Imperial College London

module spi_tb;

logic        nrst;
logic        clk;
logic        spi_req;
logic [7:0]  spi_data_out;
logic [7:0]  spi_data_in;
logic        spi_done;
logic        spi_rdy;
logic        SPI_CS;
logic        SPI_MISO;
logic        SPI_MOSI;

spi dut(.*);

initial begin
    clk = '0;
    forever #5ns clk = ~clk;
end

initial begin
    nrst = '0;
    
    @(posedge clk)
    nrst <= '1;
end

assign SPI_MISO = '0;

// SPI sequence
enum {s_idle, s_seq1, s_end} state;

always_ff @ (posedge clk, negedge nrst) begin
    if(~nrst)
        state <= s_idle;
    else
        case(state)
            s_idle:     if(spi_rdy)
                            state <= s_seq1;
            s_seq1:     if(spi_done)
                            state <=  s_end;
            s_end:      state <=  s_end;
        endcase
end
        
always_comb begin
    spi_req = '0;
    spi_data_out = '0;
    case(state)
        s_seq1: begin
                spi_req = spi_rdy;
                spi_data_out = 8'b010_1_0101;
                end
    endcase
end

endmodule
