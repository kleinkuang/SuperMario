// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Mon Mar  1 16:43:26 2021
// Host        : DESKTOP-N45SUQF running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               F:/SuperMario/fpga/sp_rd_tx/sp_rd_tx.srcs/sources_1/bd/bd_sys/ip/bd_sys_sp_rd_lvds_0_0/bd_sys_sp_rd_lvds_0_0_stub.v
// Design      : bd_sys_sp_rd_lvds_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcvu9p-flga2104-2L-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "sp_rd_lvds,Vivado 2019.1" *)
module bd_sys_sp_rd_lvds_0_0(clk, nrst, debug, start, dout_clk, dout, dout_valid, 
  SP_CLK_P, SP_CLK_N, SP_NRST_P, SP_NRST_N, SP_DIN_P, SP_DIN_N, SP_DOUT_P, SP_DOUT_N, SP_UPDATE_P, 
  SP_UPDATE_N, SP_EOF_P, SP_EOF_N, SP_SPI_CS_P, SP_SPI_CS_N, SP_SPI_MISO_P, SP_SPI_MISO_N, 
  SP_SPI_MOSI_P, SP_SPI_MOSI_N)
/* synthesis syn_black_box black_box_pad_pin="clk,nrst,debug,start,dout_clk,dout[31:0],dout_valid,SP_CLK_P,SP_CLK_N,SP_NRST_P,SP_NRST_N,SP_DIN_P[7:0],SP_DIN_N[7:0],SP_DOUT_P[7:0],SP_DOUT_N[7:0],SP_UPDATE_P,SP_UPDATE_N,SP_EOF_P,SP_EOF_N,SP_SPI_CS_P,SP_SPI_CS_N,SP_SPI_MISO_P,SP_SPI_MISO_N,SP_SPI_MOSI_P,SP_SPI_MOSI_N" */;
  input clk;
  input nrst;
  input debug;
  input start;
  output dout_clk;
  output [31:0]dout;
  output dout_valid;
  output SP_CLK_P;
  output SP_CLK_N;
  output SP_NRST_P;
  output SP_NRST_N;
  output [7:0]SP_DIN_P;
  output [7:0]SP_DIN_N;
  input [7:0]SP_DOUT_P;
  input [7:0]SP_DOUT_N;
  input SP_UPDATE_P;
  input SP_UPDATE_N;
  input SP_EOF_P;
  input SP_EOF_N;
  output SP_SPI_CS_P;
  output SP_SPI_CS_N;
  input SP_SPI_MISO_P;
  input SP_SPI_MISO_N;
  output SP_SPI_MOSI_P;
  output SP_SPI_MOSI_N;
endmodule
