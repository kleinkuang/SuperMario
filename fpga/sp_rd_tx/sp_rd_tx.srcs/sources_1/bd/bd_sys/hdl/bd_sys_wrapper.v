//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Tue Feb 23 21:35:36 2021
//Host        : DESKTOP-N45SUQF running 64-bit major release  (build 9200)
//Command     : generate_target bd_sys_wrapper.bd
//Design      : bd_sys_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_sys_wrapper
   (CLK_clk_n,
    CLK_clk_p,
    FT601Q_ft_be,
    FT601Q_ft_clk,
    FT601Q_ft_data,
    FT601Q_ft_nrst,
    FT601Q_ft_oe_n,
    FT601Q_ft_rd_n,
    FT601Q_ft_rxf_n,
    FT601Q_ft_siwu_n,
    FT601Q_ft_txe_n,
    FT601Q_ft_wr_n,
    FULL,
    SP_DIN_N,
    SP_DIN_P,
    SP_DOUT_N,
    SP_DOUT_P,
    SP_EOF_N,
    SP_EOF_P,
    SP_NRST_N,
    SP_NRST_P,
    SP_SPI_CS_N,
    SP_SPI_CS_P,
    SP_SPI_MISO_N,
    SP_SPI_MISO_P,
    SP_SPI_MOSI_N,
    SP_SPI_MOSI_P,
    SP_UPDATE_N,
    SP_UPDATE_P,
    START,
    debug,
    rst);
  input CLK_clk_n;
  input CLK_clk_p;
  output [3:0]FT601Q_ft_be;
  input FT601Q_ft_clk;
  output [31:0]FT601Q_ft_data;
  output FT601Q_ft_nrst;
  output FT601Q_ft_oe_n;
  output FT601Q_ft_rd_n;
  input FT601Q_ft_rxf_n;
  output FT601Q_ft_siwu_n;
  input FT601Q_ft_txe_n;
  output FT601Q_ft_wr_n;
  output FULL;
  output [7:0]SP_DIN_N;
  output [7:0]SP_DIN_P;
  input [7:0]SP_DOUT_N;
  input [7:0]SP_DOUT_P;
  input SP_EOF_N;
  input SP_EOF_P;
  output SP_NRST_N;
  output SP_NRST_P;
  output SP_SPI_CS_N;
  output SP_SPI_CS_P;
  input SP_SPI_MISO_N;
  input SP_SPI_MISO_P;
  output SP_SPI_MOSI_N;
  output SP_SPI_MOSI_P;
  input SP_UPDATE_N;
  input SP_UPDATE_P;
  output START;
  input debug;
  input rst;

  wire CLK_clk_n;
  wire CLK_clk_p;
  wire [3:0]FT601Q_ft_be;
  wire FT601Q_ft_clk;
  wire [31:0]FT601Q_ft_data;
  wire FT601Q_ft_nrst;
  wire FT601Q_ft_oe_n;
  wire FT601Q_ft_rd_n;
  wire FT601Q_ft_rxf_n;
  wire FT601Q_ft_siwu_n;
  wire FT601Q_ft_txe_n;
  wire FT601Q_ft_wr_n;
  wire FULL;
  wire [7:0]SP_DIN_N;
  wire [7:0]SP_DIN_P;
  wire [7:0]SP_DOUT_N;
  wire [7:0]SP_DOUT_P;
  wire SP_EOF_N;
  wire SP_EOF_P;
  wire SP_NRST_N;
  wire SP_NRST_P;
  wire SP_SPI_CS_N;
  wire SP_SPI_CS_P;
  wire SP_SPI_MISO_N;
  wire SP_SPI_MISO_P;
  wire SP_SPI_MOSI_N;
  wire SP_SPI_MOSI_P;
  wire SP_UPDATE_N;
  wire SP_UPDATE_P;
  wire START;
  wire debug;
  wire rst;

  bd_sys bd_sys_i
       (.CLK_clk_n(CLK_clk_n),
        .CLK_clk_p(CLK_clk_p),
        .FT601Q_ft_be(FT601Q_ft_be),
        .FT601Q_ft_clk(FT601Q_ft_clk),
        .FT601Q_ft_data(FT601Q_ft_data),
        .FT601Q_ft_nrst(FT601Q_ft_nrst),
        .FT601Q_ft_oe_n(FT601Q_ft_oe_n),
        .FT601Q_ft_rd_n(FT601Q_ft_rd_n),
        .FT601Q_ft_rxf_n(FT601Q_ft_rxf_n),
        .FT601Q_ft_siwu_n(FT601Q_ft_siwu_n),
        .FT601Q_ft_txe_n(FT601Q_ft_txe_n),
        .FT601Q_ft_wr_n(FT601Q_ft_wr_n),
        .FULL(FULL),
        .SP_DIN_N(SP_DIN_N),
        .SP_DIN_P(SP_DIN_P),
        .SP_DOUT_N(SP_DOUT_N),
        .SP_DOUT_P(SP_DOUT_P),
        .SP_EOF_N(SP_EOF_N),
        .SP_EOF_P(SP_EOF_P),
        .SP_NRST_N(SP_NRST_N),
        .SP_NRST_P(SP_NRST_P),
        .SP_SPI_CS_N(SP_SPI_CS_N),
        .SP_SPI_CS_P(SP_SPI_CS_P),
        .SP_SPI_MISO_N(SP_SPI_MISO_N),
        .SP_SPI_MISO_P(SP_SPI_MISO_P),
        .SP_SPI_MOSI_N(SP_SPI_MOSI_N),
        .SP_SPI_MOSI_P(SP_SPI_MOSI_P),
        .SP_UPDATE_N(SP_UPDATE_N),
        .SP_UPDATE_P(SP_UPDATE_P),
        .START(START),
        .debug(debug),
        .rst(rst));
endmodule
