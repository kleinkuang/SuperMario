// File:    sp_rd_tb.sv
// Author:  Lei Kuang
// Date:    4th Feburary 2020
// @ Imperial College London

module sp_rd_tb;

logic        clk;
logic        nrst;
logic        debug;
logic        start;
logic [31:0] dout;
logic        dout_valid;
logic        ila_clk;
// SuperMario Physical Pins
logic        SP_CLK;
logic        SP_NRST;
logic [7:0]  SP_DIN;
logic [7:0]  SP_DOUT;
logic        SP_UPDATE;
logic        SP_EOF;
// - SPI Port
logic        SP_SPI_CS;
logic        SP_SPI_MISO;
logic        SP_SPI_MOSI;

assign debug = '0;
assign start = '1;

sp_rd sp_rd_inst(.*);

supermario sp_inst
(
    .clk     (SP_CLK),
    .nrst    (SP_NRST),
    .spi_cs  (SP_SPI_CS),
    .spi_sdi (SP_SPI_MOSI),
    .spi_sdo (SP_SPI_MISO),
    .din     (SP_DIN),
    .dout    (SP_DOUT),
    .update  (SP_UPDATE),
    .eof     (SP_EOF)
);

initial begin
    clk = '0;
    forever #12.5ns clk = ~clk;
end

initial begin
    nrst = '0;
    
    #20ns
    @(negedge clk)
    nrst <= '1;
end

endmodule
