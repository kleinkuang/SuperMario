// File:    spi_24b_tb.sv
// Author:  Lei Kuang
// Date:    16th Feburary 2021
// @ Imperial College London

module spi_24b_tb;

logic        clk;

logic        spi_en;
logic [23:0] spi_data_out;
logic        spi_done;

logic        SPI_SCK;
logic        SPI_CS;
logic        SPI_MOSI;

spi_24b dut(.*);

initial begin
    clk = '0;
    forever #5ns clk = ~clk;
end

initial begin
    spi_en = '0;
    spi_data_out = 24'hAA00AA;
    
    #100ns
    @(posedge clk)
    spi_en <= '1;
    
    @(posedge spi_done)
    ;
    
    @(posedge clk) begin
    spi_en <= '0;
    spi_data_out <= 24'h550055AA;
    end
    
    #100ns
    @(posedge clk)
    spi_en <= '1;
    
end

endmodule