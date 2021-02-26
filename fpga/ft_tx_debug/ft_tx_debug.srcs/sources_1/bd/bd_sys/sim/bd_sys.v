//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Tue Feb 23 11:40:28 2021
//Host        : DESKTOP-N45SUQF running 64-bit major release  (build 9200)
//Command     : generate_target bd_sys.bd
//Design      : bd_sys
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bd_sys,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_sys,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "bd_sys.hwdef" *) 
module bd_sys
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 CLK_IN1 CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK_IN1, CAN_DEBUG false, FREQ_HZ 100000000" *) input CLK_IN1_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 CLK_IN1 CLK_P" *) input CLK_IN1_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:user:FT601Q:1.0 FT601Q FT_BE" *) output [3:0]FT601Q_ft_be;
  (* X_INTERFACE_INFO = "xilinx.com:user:FT601Q:1.0 FT601Q FT_CLK" *) input FT601Q_ft_clk;
  (* X_INTERFACE_INFO = "xilinx.com:user:FT601Q:1.0 FT601Q FT_DATA" *) output [31:0]FT601Q_ft_data;
  (* X_INTERFACE_INFO = "xilinx.com:user:FT601Q:1.0 FT601Q FT_NRST" *) output FT601Q_ft_nrst;
  (* X_INTERFACE_INFO = "xilinx.com:user:FT601Q:1.0 FT601Q FT_OE_N" *) output FT601Q_ft_oe_n;
  (* X_INTERFACE_INFO = "xilinx.com:user:FT601Q:1.0 FT601Q FT_RD_N" *) output FT601Q_ft_rd_n;
  (* X_INTERFACE_INFO = "xilinx.com:user:FT601Q:1.0 FT601Q FT_RXF_N" *) input FT601Q_ft_rxf_n;
  (* X_INTERFACE_INFO = "xilinx.com:user:FT601Q:1.0 FT601Q FT_SIWU_N" *) output FT601Q_ft_siwu_n;
  (* X_INTERFACE_INFO = "xilinx.com:user:FT601Q:1.0 FT601Q FT_TXE_N" *) input FT601Q_ft_txe_n;
  (* X_INTERFACE_INFO = "xilinx.com:user:FT601Q:1.0 FT601Q FT_WR_N" *) output FT601Q_ft_wr_n;
  output ft_ready;
  output ft_start;
  input nrst;
  output wr_clk;
  input [31:0]wr_data;
  input wr_en;
  output wr_full;

  wire CLK_IN1_D_0_1_CLK_N;
  wire CLK_IN1_D_0_1_CLK_P;
  wire clk_wiz_0_clk_out1;
  wire [3:0]ft_tx_0_FT601Q_FT_BE;
  wire ft_tx_0_FT601Q_FT_CLK;
  wire [31:0]ft_tx_0_FT601Q_FT_DATA;
  wire ft_tx_0_FT601Q_FT_NRST;
  wire ft_tx_0_FT601Q_FT_OE_N;
  wire ft_tx_0_FT601Q_FT_RD_N;
  wire ft_tx_0_FT601Q_FT_RXF_N;
  wire ft_tx_0_FT601Q_FT_SIWU_N;
  wire ft_tx_0_FT601Q_FT_TXE_N;
  wire ft_tx_0_FT601Q_FT_WR_N;
  wire ft_tx_0_ft_ready;
  wire ft_tx_0_ft_start;
  wire ft_tx_0_wr_full;
  wire nrst_0_1;
  wire [31:0]wr_data_0_1;
  wire wr_en_0_1;

  assign CLK_IN1_D_0_1_CLK_N = CLK_IN1_clk_n;
  assign CLK_IN1_D_0_1_CLK_P = CLK_IN1_clk_p;
  assign FT601Q_ft_be[3:0] = ft_tx_0_FT601Q_FT_BE;
  assign FT601Q_ft_data[31:0] = ft_tx_0_FT601Q_FT_DATA;
  assign FT601Q_ft_nrst = ft_tx_0_FT601Q_FT_NRST;
  assign FT601Q_ft_oe_n = ft_tx_0_FT601Q_FT_OE_N;
  assign FT601Q_ft_rd_n = ft_tx_0_FT601Q_FT_RD_N;
  assign FT601Q_ft_siwu_n = ft_tx_0_FT601Q_FT_SIWU_N;
  assign FT601Q_ft_wr_n = ft_tx_0_FT601Q_FT_WR_N;
  assign ft_ready = ft_tx_0_ft_ready;
  assign ft_start = ft_tx_0_ft_start;
  assign ft_tx_0_FT601Q_FT_CLK = FT601Q_ft_clk;
  assign ft_tx_0_FT601Q_FT_RXF_N = FT601Q_ft_rxf_n;
  assign ft_tx_0_FT601Q_FT_TXE_N = FT601Q_ft_txe_n;
  assign nrst_0_1 = nrst;
  assign wr_clk = clk_wiz_0_clk_out1;
  assign wr_data_0_1 = wr_data[31:0];
  assign wr_en_0_1 = wr_en;
  assign wr_full = ft_tx_0_wr_full;
  bd_sys_clk_wiz_0_0 clk_wiz_0
       (.clk_in1_n(CLK_IN1_D_0_1_CLK_N),
        .clk_in1_p(CLK_IN1_D_0_1_CLK_P),
        .clk_out1(clk_wiz_0_clk_out1));
  bd_sys_ft_tx_0_0 ft_tx_0
       (.FT_BE(ft_tx_0_FT601Q_FT_BE),
        .FT_CLK(ft_tx_0_FT601Q_FT_CLK),
        .FT_DATA(ft_tx_0_FT601Q_FT_DATA),
        .FT_NRST(ft_tx_0_FT601Q_FT_NRST),
        .FT_OE_N(ft_tx_0_FT601Q_FT_OE_N),
        .FT_RD_N(ft_tx_0_FT601Q_FT_RD_N),
        .FT_RXF_N(ft_tx_0_FT601Q_FT_RXF_N),
        .FT_SIWU_N(ft_tx_0_FT601Q_FT_SIWU_N),
        .FT_TXE_N(ft_tx_0_FT601Q_FT_TXE_N),
        .FT_WR_N(ft_tx_0_FT601Q_FT_WR_N),
        .ft_ready(ft_tx_0_ft_ready),
        .ft_start(ft_tx_0_ft_start),
        .nrst(nrst_0_1),
        .wr_clk(clk_wiz_0_clk_out1),
        .wr_data(wr_data_0_1),
        .wr_en(wr_en_0_1),
        .wr_full(ft_tx_0_wr_full));
endmodule