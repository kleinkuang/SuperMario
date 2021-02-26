//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Tue Feb 23 11:40:28 2021
//Host        : DESKTOP-N45SUQF running 64-bit major release  (build 9200)
//Command     : generate_target bd_sys_wrapper.bd
//Design      : bd_sys_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_sys_wrapper
   (CLK_IN1_clk_n,
    CLK_IN1_clk_p,
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
    ft_ready,
    ft_start,
    nrst,
    wr_clk,
    wr_data,
    wr_en,
    wr_full);
  input CLK_IN1_clk_n;
  input CLK_IN1_clk_p;
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
  output ft_ready;
  output ft_start;
  input nrst;
  output wr_clk;
  input [31:0]wr_data;
  input wr_en;
  output wr_full;

  wire CLK_IN1_clk_n;
  wire CLK_IN1_clk_p;
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
  wire ft_ready;
  wire ft_start;
  wire nrst;
  wire wr_clk;
  wire [31:0]wr_data;
  wire wr_en;
  wire wr_full;

  bd_sys bd_sys_i
       (.CLK_IN1_clk_n(CLK_IN1_clk_n),
        .CLK_IN1_clk_p(CLK_IN1_clk_p),
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
        .ft_ready(ft_ready),
        .ft_start(ft_start),
        .nrst(nrst),
        .wr_clk(wr_clk),
        .wr_data(wr_data),
        .wr_en(wr_en),
        .wr_full(wr_full));
endmodule
