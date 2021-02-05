// File:    supermario.sv
// Author:  Lei Kuang
// Date:    16th Janurary 2021
// @ Imperial College London

module supermario
(
    input  logic nrst,
    input  logic clk,
    
    // SPI
    input  logic spi_cs,
    input  logic spi_sdi,
    output logic spi_sdo,
    
    // Data and flag
    input  logic [7:0] din,
    output logic [7:0] dout,
    output logic       update,
    output logic       eof
);

Top_Digital chip_inst
(
    .clk          (clk),
    .n_reset      (nrst),
    // SPI
    .CS           (spi_cs),
    .SPI_CtoF     (spi_sdo),
    .SPI_FtoC     (spi_sdi),
    // Data
    .DAC_FPGA     (din),
    .ADC_OUT      (dout),
    .update       (update),
    .EoF          (eof),
    // Others
    .Flag         (),
    .S1_In        (),
    .S2           (),
    .S3           (),
    .Min          (),
    .Med          (),
    .Max          (),
    .Mad          (),
    .reset        (),
    .DAC_OUT_CHIP ()
    );

endmodule
