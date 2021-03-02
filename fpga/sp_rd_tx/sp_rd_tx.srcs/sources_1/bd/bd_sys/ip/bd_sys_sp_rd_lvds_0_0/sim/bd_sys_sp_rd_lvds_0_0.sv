// (c) Copyright 1995-2021 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:user:sp_rd_lvds:1.0
// IP Revision: 7

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "package_project" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module bd_sys_sp_rd_lvds_0_0 (
  clk,
  nrst,
  debug,
  start,
  dout_clk,
  dout,
  dout_valid,
  SP_CLK_P,
  SP_CLK_N,
  SP_NRST_P,
  SP_NRST_N,
  SP_DIN_P,
  SP_DIN_N,
  SP_DOUT_P,
  SP_DOUT_N,
  SP_UPDATE_P,
  SP_UPDATE_N,
  SP_EOF_P,
  SP_EOF_N,
  SP_SPI_CS_P,
  SP_SPI_CS_N,
  SP_SPI_MISO_P,
  SP_SPI_MISO_N,
  SP_SPI_MOSI_P,
  SP_SPI_MOSI_N
);

input wire clk;
input wire nrst;
input wire debug;
input wire start;
(* X_INTERFACE_INFO = "xilinx.com:user:FIFO_WR:1.0 DATA_OUT wr_clk" *)
output wire dout_clk;
(* X_INTERFACE_INFO = "xilinx.com:user:FIFO_WR:1.0 DATA_OUT wr_data" *)
output wire [31 : 0] dout;
(* X_INTERFACE_INFO = "xilinx.com:user:FIFO_WR:1.0 DATA_OUT wr_en" *)
output wire dout_valid;
(* X_INTERFACE_INFO = "xilinx.com:user:SuperMario:1.0 SP SP_CLK_P" *)
output wire SP_CLK_P;
(* X_INTERFACE_INFO = "xilinx.com:user:SuperMario:1.0 SP SP_CLK_N" *)
output wire SP_CLK_N;
(* X_INTERFACE_INFO = "xilinx.com:user:SuperMario:1.0 SP SP_NRST_P" *)
output wire SP_NRST_P;
(* X_INTERFACE_INFO = "xilinx.com:user:SuperMario:1.0 SP SP_NRST_N" *)
output wire SP_NRST_N;
(* X_INTERFACE_INFO = "xilinx.com:user:SuperMario:1.0 SP SP_DIN_P" *)
output wire [7 : 0] SP_DIN_P;
(* X_INTERFACE_INFO = "xilinx.com:user:SuperMario:1.0 SP SP_DIN_N" *)
output wire [7 : 0] SP_DIN_N;
(* X_INTERFACE_INFO = "xilinx.com:user:SuperMario:1.0 SP SP_DOUT_P" *)
input wire [7 : 0] SP_DOUT_P;
(* X_INTERFACE_INFO = "xilinx.com:user:SuperMario:1.0 SP SP_DOUT_N" *)
input wire [7 : 0] SP_DOUT_N;
(* X_INTERFACE_INFO = "xilinx.com:user:SuperMario:1.0 SP SP_UPDATE_P" *)
input wire SP_UPDATE_P;
(* X_INTERFACE_INFO = "xilinx.com:user:SuperMario:1.0 SP SP_UPDATE_N" *)
input wire SP_UPDATE_N;
(* X_INTERFACE_INFO = "xilinx.com:user:SuperMario:1.0 SP SP_EOF_P" *)
input wire SP_EOF_P;
(* X_INTERFACE_INFO = "xilinx.com:user:SuperMario:1.0 SP SP_EOF_N" *)
input wire SP_EOF_N;
(* X_INTERFACE_INFO = "xilinx.com:user:SuperMario:1.0 SP SP_SPI_CS_P" *)
output wire SP_SPI_CS_P;
(* X_INTERFACE_INFO = "xilinx.com:user:SuperMario:1.0 SP SP_SPI_CS_N" *)
output wire SP_SPI_CS_N;
(* X_INTERFACE_INFO = "xilinx.com:user:SuperMario:1.0 SP SP_SPI_MISO_P" *)
input wire SP_SPI_MISO_P;
(* X_INTERFACE_INFO = "xilinx.com:user:SuperMario:1.0 SP SP_SPI_MISO_N" *)
input wire SP_SPI_MISO_N;
(* X_INTERFACE_INFO = "xilinx.com:user:SuperMario:1.0 SP SP_SPI_MOSI_P" *)
output wire SP_SPI_MOSI_P;
(* X_INTERFACE_INFO = "xilinx.com:user:SuperMario:1.0 SP SP_SPI_MOSI_N" *)
output wire SP_SPI_MOSI_N;

  sp_rd_lvds inst (
    .clk(clk),
    .nrst(nrst),
    .debug(debug),
    .start(start),
    .dout_clk(dout_clk),
    .dout(dout),
    .dout_valid(dout_valid),
    .SP_CLK_P(SP_CLK_P),
    .SP_CLK_N(SP_CLK_N),
    .SP_NRST_P(SP_NRST_P),
    .SP_NRST_N(SP_NRST_N),
    .SP_DIN_P(SP_DIN_P),
    .SP_DIN_N(SP_DIN_N),
    .SP_DOUT_P(SP_DOUT_P),
    .SP_DOUT_N(SP_DOUT_N),
    .SP_UPDATE_P(SP_UPDATE_P),
    .SP_UPDATE_N(SP_UPDATE_N),
    .SP_EOF_P(SP_EOF_P),
    .SP_EOF_N(SP_EOF_N),
    .SP_SPI_CS_P(SP_SPI_CS_P),
    .SP_SPI_CS_N(SP_SPI_CS_N),
    .SP_SPI_MISO_P(SP_SPI_MISO_P),
    .SP_SPI_MISO_N(SP_SPI_MISO_N),
    .SP_SPI_MOSI_P(SP_SPI_MOSI_P),
    .SP_SPI_MOSI_N(SP_SPI_MOSI_N)
  );
endmodule
