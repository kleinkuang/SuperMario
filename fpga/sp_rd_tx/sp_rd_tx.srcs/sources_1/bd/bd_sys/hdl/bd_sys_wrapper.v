//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Mon Mar  1 16:41:33 2021
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
    SP_sp_clk_n,
    SP_sp_clk_p,
    SP_sp_din_n,
    SP_sp_din_p,
    SP_sp_dout_n,
    SP_sp_dout_p,
    SP_sp_eof_n,
    SP_sp_eof_p,
    SP_sp_nrst_n,
    SP_sp_nrst_p,
    SP_sp_spi_cs_n,
    SP_sp_spi_cs_p,
    SP_sp_spi_miso_n,
    SP_sp_spi_miso_p,
    SP_sp_spi_mosi_n,
    SP_sp_spi_mosi_p,
    SP_sp_update_n,
    SP_sp_update_p,
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
  output SP_sp_clk_n;
  output SP_sp_clk_p;
  output [7:0]SP_sp_din_n;
  output [7:0]SP_sp_din_p;
  input [7:0]SP_sp_dout_n;
  input [7:0]SP_sp_dout_p;
  input SP_sp_eof_n;
  input SP_sp_eof_p;
  output SP_sp_nrst_n;
  output SP_sp_nrst_p;
  output SP_sp_spi_cs_n;
  output SP_sp_spi_cs_p;
  input SP_sp_spi_miso_n;
  input SP_sp_spi_miso_p;
  output SP_sp_spi_mosi_n;
  output SP_sp_spi_mosi_p;
  input SP_sp_update_n;
  input SP_sp_update_p;
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
  wire SP_sp_clk_n;
  wire SP_sp_clk_p;
  wire [7:0]SP_sp_din_n;
  wire [7:0]SP_sp_din_p;
  wire [7:0]SP_sp_dout_n;
  wire [7:0]SP_sp_dout_p;
  wire SP_sp_eof_n;
  wire SP_sp_eof_p;
  wire SP_sp_nrst_n;
  wire SP_sp_nrst_p;
  wire SP_sp_spi_cs_n;
  wire SP_sp_spi_cs_p;
  wire SP_sp_spi_miso_n;
  wire SP_sp_spi_miso_p;
  wire SP_sp_spi_mosi_n;
  wire SP_sp_spi_mosi_p;
  wire SP_sp_update_n;
  wire SP_sp_update_p;
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
        .SP_sp_clk_n(SP_sp_clk_n),
        .SP_sp_clk_p(SP_sp_clk_p),
        .SP_sp_din_n(SP_sp_din_n),
        .SP_sp_din_p(SP_sp_din_p),
        .SP_sp_dout_n(SP_sp_dout_n),
        .SP_sp_dout_p(SP_sp_dout_p),
        .SP_sp_eof_n(SP_sp_eof_n),
        .SP_sp_eof_p(SP_sp_eof_p),
        .SP_sp_nrst_n(SP_sp_nrst_n),
        .SP_sp_nrst_p(SP_sp_nrst_p),
        .SP_sp_spi_cs_n(SP_sp_spi_cs_n),
        .SP_sp_spi_cs_p(SP_sp_spi_cs_p),
        .SP_sp_spi_miso_n(SP_sp_spi_miso_n),
        .SP_sp_spi_miso_p(SP_sp_spi_miso_p),
        .SP_sp_spi_mosi_n(SP_sp_spi_mosi_n),
        .SP_sp_spi_mosi_p(SP_sp_spi_mosi_p),
        .SP_sp_update_n(SP_sp_update_n),
        .SP_sp_update_p(SP_sp_update_p),
        .START(START),
        .debug(debug),
        .rst(rst));
endmodule
