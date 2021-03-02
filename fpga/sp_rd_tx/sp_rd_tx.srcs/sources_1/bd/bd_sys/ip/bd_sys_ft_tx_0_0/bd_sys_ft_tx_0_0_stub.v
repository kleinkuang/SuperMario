// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Fri Feb 26 20:55:29 2021
// Host        : DESKTOP-N45SUQF running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top bd_sys_ft_tx_0_0 -prefix
//               bd_sys_ft_tx_0_0_ bd_sys_ft_tx_0_0_stub.v
// Design      : bd_sys_ft_tx_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcvu9p-flga2104-2L-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ft_tx,Vivado 2019.1" *)
module bd_sys_ft_tx_0_0(nrst, ft_ready, ft_start, ft_full, wr_clk, wr_en, 
  wr_data, wr_full, FT_CLK, FT_NRST, FT_TXE_N, FT_RXF_N, FT_WR_N, FT_RD_N, FT_OE_N, FT_BE, FT_DATA, 
  FT_SIWU_N)
/* synthesis syn_black_box black_box_pad_pin="nrst,ft_ready,ft_start,ft_full,wr_clk,wr_en,wr_data[31:0],wr_full,FT_CLK,FT_NRST,FT_TXE_N,FT_RXF_N,FT_WR_N,FT_RD_N,FT_OE_N,FT_BE[3:0],FT_DATA[31:0],FT_SIWU_N" */;
  input nrst;
  output ft_ready;
  output ft_start;
  output ft_full;
  input wr_clk;
  input wr_en;
  input [31:0]wr_data;
  output wr_full;
  input FT_CLK;
  output FT_NRST;
  input FT_TXE_N;
  input FT_RXF_N;
  output FT_WR_N;
  output FT_RD_N;
  output FT_OE_N;
  output [3:0]FT_BE;
  output [31:0]FT_DATA;
  output FT_SIWU_N;
endmodule
