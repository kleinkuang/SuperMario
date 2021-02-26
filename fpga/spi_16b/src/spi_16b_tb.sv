// File:    spi_16b_tb.sv
// Author:  Lei Kuang
// Date:    16th Feburary 2021
// @ Imperial College London

module spi_16b_tb;

logic        clk;

logic        spi_en;
logic [15:0] spi_data_out;
logic        spi_done;

logic        SPI_SCK;
logic        SPI_CS;
logic        SPI_MOSI;

spi_16b dut(.*);

initial begin
    clk = '0;
    forever #5ns clk = ~clk;
end

initial begin
    spi_en = '0;
    spi_data_out = 15'hAA00;
    
    #100ns
    @(posedge clk)
    spi_en <= '1;
    
    @(posedge spi_done)
    ;
    
    @(posedge clk) begin
    spi_en <= '0;
    spi_data_out <= 15'h0055;
    end
    
    #100ns
    @(posedge clk)
    spi_en <= '1;
    
end

endmodule