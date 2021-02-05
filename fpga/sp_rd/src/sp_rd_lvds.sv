// File:    sp_rd_lvds.sv
// Author:  Lei Kuang
// Date:    4th Feburary 2020
// @ Imperial College London

// Readout Interface for SuperMario

module sp_rd_lvds
(
    input  logic        clk,
    input  logic        nrst,
    
    input  logic        debug,
    input  logic        start,
    
    output logic [31:0] dout,
    output logic        dout_valid,
    
    // ILA
    input  logic        ila_clk,
    
    // SuperMario Physical Port
    output logic        SP_CLK_P,
    output logic        SP_CLK_N,
    output logic        SP_NRST_P,
    output logic        SP_NRST_N,
    output logic [7:0]  SP_DIN_P,
    output logic [7:0]  SP_DIN_N,
    input  logic [7:0]  SP_DOUT_P,
    input  logic [7:0]  SP_DOUT_N,
    input  logic        SP_UPDATE_P,
    input  logic        SP_UPDATE_N,
    input  logic        SP_EOF_P,
    input  logic        SP_EOF_N,
    // - SPI Port
    output logic        SP_SPI_CS_P,
    output logic        SP_SPI_CS_N,
    input  logic        SP_SPI_MISO_P,
    input  logic        SP_SPI_MISO_N,
    output logic        SP_SPI_MOSI_P,
    output logic        SP_SPI_MOSI_N
);

// ----------------------------------------------------------------
// Instantiation
// ----------------------------------------------------------------
logic        SP_CLK;
logic        SP_NRST;
logic [7:0]  SP_DIN;
logic [7:0]  SP_DOUT;
logic        SP_UPDATE;
logic        SP_EOF;
logic        SP_SPI_CS;
logic        SP_SPI_MISO;
logic        SP_SPI_MOSI;

sp_rd sp_rd_inst
(
    .clk         (clk),
    .nrst        (nrst),
    
    .debug       (debug),
    .start       (start),
    
    .dout        (dout),
    .dout_valid  (dout_valid),
    
    // ILA
    .ila_clk     (ila_clk),

    // SuperMario Physical Port
    .SP_CLK      (SP_CLK),
    .SP_NRST     (SP_NRST),
    .SP_DIN      (SP_DIN),
    .SP_DOUT     (SP_DOUT),
    .SP_UPDATE   (SP_UPDATE),
    .SP_EOF      (SP_EOF),
    // - SPI Port
    .SP_SPI_CS   (SP_SPI_CS),
    .SP_SPI_MISO (~SP_SPI_MISO),            // LVDS Flipped
    .SP_SPI_MOSI (SP_SPI_MOSI)
);

// ----------------------------------------------------------------
// LVDS Translation
// ----------------------------------------------------------------

// Output ---------------------------------------------------------
// SP_CLK
OBUFDS 
#(
    .IOSTANDARD ("DEFAULT"),                // Specify the output I/O standard
    .SLEW       ("FAST")                    // Specify the output slew rate
) 
o_sp_clk
(
    .I          (~SP_CLK),                  // LVDS Flipped
    .O          (SP_CLK_P),
    .OB         (SP_CLK_N)
);

// SP_NRST
OBUFDS 
#(
    .IOSTANDARD ("DEFAULT"),                // Specify the output I/O standard
    .SLEW       ("FAST")                    // Specify the output slew rate
) 
o_sp_nrst
(
    .I          (~SP_NRST),                 // LVDS Flipped
    .O          (SP_NRST_P),
    .OB         (SP_NRST_N)
);

// SP_SPI_CS
OBUFDS 
#(
    .IOSTANDARD ("DEFAULT"),                // Specify the output I/O standard
    .SLEW       ("FAST")                    // Specify the output slew rate
) 
o_spi_cs
(
    .I          (~SP_SPI_CS),               // LVDS Flipped
    .O          (SP_SPI_CS_P),
    .OB         (SP_SPI_CS_N)
);

// SP_SPI_MOSI
OBUFDS 
#(
    .IOSTANDARD ("DEFAULT"),                // Specify the output I/O standard
    .SLEW       ("FAST")                    // Specify the output slew rate
) 
o_spi_mosi
(
    .I          (~SP_SPI_MOSI),             // LVDS Flipped
    .O          (SP_SPI_MOSI_P),
    .OB         (SP_SPI_MOSI_N)
);

// SP_DIN
genvar i;
generate 
begin: SP_DAC
    for( i=0; i<8; i++) begin: dac
        OBUFDS 
        #(
            .IOSTANDARD ("DEFAULT"),        // Specify the output I/O standard
            .SLEW       ("FAST")            // Specify the output slew rate
        ) 
        o_sp_nrst
        (
            .I          (~SP_DIN[i]),       // LVDS Flipped
            .O          (SP_DIN_P[i]),
            .OB         (SP_DIN_N[i])
        );
    end
end
endgenerate

// In ----------------------------------------------------------------
// SP_UPDATE
IBUFDS 
#(
    .DIFF_TERM      ("FALSE"),              // Differential Termination
    .IBUF_LOW_PWR   ("TRUE"),               // Low power="TRUE", Highest performance="FALSE"
    .IOSTANDARD     ("DEFAULT")             // Specify the input I/O standard
) 
i_sp_update
(
    .I  (SP_UPDATE_P),
    .IB (SP_UPDATE_N),
    .O  (SP_UPDATE)
);

// SP_EOF
IBUFDS 
#(
    .DIFF_TERM      ("FALSE"),              // Differential Termination
    .IBUF_LOW_PWR   ("TRUE"),               // Low power="TRUE", Highest performance="FALSE"
    .IOSTANDARD     ("DEFAULT")             // Specify the input I/O standard
) 
i_sp_eof
(
    .I  (SP_EOF_P),
    .IB (SP_EOF_N),
    .O  (SP_EOF)
);

// SP_EOF
IBUFDS 
#(
    .DIFF_TERM      ("FALSE"),              // Differential Termination
    .IBUF_LOW_PWR   ("TRUE"),               // Low power="TRUE", Highest performance="FALSE"
    .IOSTANDARD     ("DEFAULT")             // Specify the input I/O standard
) 
i_spi_miso
(
    .I  (SP_SPI_MISO_P),
    .IB (SP_SPI_MISO_N),
    .O  (SP_SPI_MISO)
);

// SP_DOUT
generate 
begin: adc
    for( i=0; i<8; i++) begin: b
        IBUFDS 
        #(
            .DIFF_TERM      ("FALSE"),      // Differential Termination
            .IBUF_LOW_PWR   ("TRUE"),       // Low power="TRUE", Highest performance="FALSE"
            .IOSTANDARD     ("DEFAULT")     // Specify the input I/O standard
        ) 
        IBUFDS_ADC_OUT
        (
            .I  (SP_DOUT_P[i]),
            .IB (SP_DOUT_N[i]),
            .O  (SP_DOUT[i])
        );
    end
end
endgenerate

endmodule
