//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Mon Mar  1 16:41:33 2021
//Host        : DESKTOP-N45SUQF running 64-bit major release  (build 9200)
//Command     : generate_target bd_sys.bd
//Design      : bd_sys
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bd_sys,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_sys,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=4,numReposBlks=4,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "bd_sys.hwdef" *) 
module bd_sys
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 CLK CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK, CAN_DEBUG false, FREQ_HZ 100000000" *) input CLK_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 CLK CLK_P" *) input CLK_clk_p;
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
  output FULL;
  (* X_INTERFACE_INFO = "xilinx.com:user:SuperMario:1.0 SP " *) output SP_sp_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:user:SuperMario:1.0 SP " *) output SP_sp_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:user:SuperMario:1.0 SP " *) output [7:0]SP_sp_din_n;
  (* X_INTERFACE_INFO = "xilinx.com:user:SuperMario:1.0 SP " *) output [7:0]SP_sp_din_p;
  (* X_INTERFACE_INFO = "xilinx.com:user:SuperMario:1.0 SP " *) input [7:0]SP_sp_dout_n;
  (* X_INTERFACE_INFO = "xilinx.com:user:SuperMario:1.0 SP " *) input [7:0]SP_sp_dout_p;
  (* X_INTERFACE_INFO = "xilinx.com:user:SuperMario:1.0 SP " *) input SP_sp_eof_n;
  (* X_INTERFACE_INFO = "xilinx.com:user:SuperMario:1.0 SP " *) input SP_sp_eof_p;
  (* X_INTERFACE_INFO = "xilinx.com:user:SuperMario:1.0 SP " *) output SP_sp_nrst_n;
  (* X_INTERFACE_INFO = "xilinx.com:user:SuperMario:1.0 SP " *) output SP_sp_nrst_p;
  (* X_INTERFACE_INFO = "xilinx.com:user:SuperMario:1.0 SP " *) output SP_sp_spi_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:user:SuperMario:1.0 SP " *) output SP_sp_spi_cs_p;
  (* X_INTERFACE_INFO = "xilinx.com:user:SuperMario:1.0 SP " *) input SP_sp_spi_miso_n;
  (* X_INTERFACE_INFO = "xilinx.com:user:SuperMario:1.0 SP " *) input SP_sp_spi_miso_p;
  (* X_INTERFACE_INFO = "xilinx.com:user:SuperMario:1.0 SP " *) output SP_sp_spi_mosi_n;
  (* X_INTERFACE_INFO = "xilinx.com:user:SuperMario:1.0 SP " *) output SP_sp_spi_mosi_p;
  (* X_INTERFACE_INFO = "xilinx.com:user:SuperMario:1.0 SP " *) input SP_sp_update_n;
  (* X_INTERFACE_INFO = "xilinx.com:user:SuperMario:1.0 SP " *) input SP_sp_update_p;
  output START;
  input debug;
  input rst;

  wire CLK_IN1_D_0_1_CLK_N;
  wire CLK_IN1_D_0_1_CLK_P;
  wire clk_wiz_0_clk_out1;
  wire debug_0_1;
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
  wire ft_tx_0_ft_full;
  wire ft_tx_0_ft_ready;
  wire ft_tx_0_ft_start;
  wire rst_1;
  wire sp_rd_lvds_0_DATA_OUT_wr_clk;
  wire [31:0]sp_rd_lvds_0_DATA_OUT_wr_data;
  wire sp_rd_lvds_0_DATA_OUT_wr_en;
  wire sp_rd_lvds_0_SP_SP_CLK_N;
  wire sp_rd_lvds_0_SP_SP_CLK_P;
  wire [7:0]sp_rd_lvds_0_SP_SP_DIN_N;
  wire [7:0]sp_rd_lvds_0_SP_SP_DIN_P;
  wire [7:0]sp_rd_lvds_0_SP_SP_DOUT_N;
  wire [7:0]sp_rd_lvds_0_SP_SP_DOUT_P;
  wire sp_rd_lvds_0_SP_SP_EOF_N;
  wire sp_rd_lvds_0_SP_SP_EOF_P;
  wire sp_rd_lvds_0_SP_SP_NRST_N;
  wire sp_rd_lvds_0_SP_SP_NRST_P;
  wire sp_rd_lvds_0_SP_SP_SPI_CS_N;
  wire sp_rd_lvds_0_SP_SP_SPI_CS_P;
  wire sp_rd_lvds_0_SP_SP_SPI_MISO_N;
  wire sp_rd_lvds_0_SP_SP_SPI_MISO_P;
  wire sp_rd_lvds_0_SP_SP_SPI_MOSI_N;
  wire sp_rd_lvds_0_SP_SP_SPI_MOSI_P;
  wire sp_rd_lvds_0_SP_SP_UPDATE_N;
  wire sp_rd_lvds_0_SP_SP_UPDATE_P;
  wire [0:0]util_vector_logic_0_Res;

  assign CLK_IN1_D_0_1_CLK_N = CLK_clk_n;
  assign CLK_IN1_D_0_1_CLK_P = CLK_clk_p;
  assign FT601Q_ft_be[3:0] = ft_tx_0_FT601Q_FT_BE;
  assign FT601Q_ft_data[31:0] = ft_tx_0_FT601Q_FT_DATA;
  assign FT601Q_ft_nrst = ft_tx_0_FT601Q_FT_NRST;
  assign FT601Q_ft_oe_n = ft_tx_0_FT601Q_FT_OE_N;
  assign FT601Q_ft_rd_n = ft_tx_0_FT601Q_FT_RD_N;
  assign FT601Q_ft_siwu_n = ft_tx_0_FT601Q_FT_SIWU_N;
  assign FT601Q_ft_wr_n = ft_tx_0_FT601Q_FT_WR_N;
  assign FULL = ft_tx_0_ft_full;
  assign SP_sp_clk_n = sp_rd_lvds_0_SP_SP_CLK_N;
  assign SP_sp_clk_p = sp_rd_lvds_0_SP_SP_CLK_P;
  assign SP_sp_din_n[7:0] = sp_rd_lvds_0_SP_SP_DIN_N;
  assign SP_sp_din_p[7:0] = sp_rd_lvds_0_SP_SP_DIN_P;
  assign SP_sp_nrst_n = sp_rd_lvds_0_SP_SP_NRST_N;
  assign SP_sp_nrst_p = sp_rd_lvds_0_SP_SP_NRST_P;
  assign SP_sp_spi_cs_n = sp_rd_lvds_0_SP_SP_SPI_CS_N;
  assign SP_sp_spi_cs_p = sp_rd_lvds_0_SP_SP_SPI_CS_P;
  assign SP_sp_spi_mosi_n = sp_rd_lvds_0_SP_SP_SPI_MOSI_N;
  assign SP_sp_spi_mosi_p = sp_rd_lvds_0_SP_SP_SPI_MOSI_P;
  assign START = ft_tx_0_ft_ready;
  assign debug_0_1 = debug;
  assign ft_tx_0_FT601Q_FT_CLK = FT601Q_ft_clk;
  assign ft_tx_0_FT601Q_FT_RXF_N = FT601Q_ft_rxf_n;
  assign ft_tx_0_FT601Q_FT_TXE_N = FT601Q_ft_txe_n;
  assign rst_1 = rst;
  assign sp_rd_lvds_0_SP_SP_DOUT_N = SP_sp_dout_n[7:0];
  assign sp_rd_lvds_0_SP_SP_DOUT_P = SP_sp_dout_p[7:0];
  assign sp_rd_lvds_0_SP_SP_EOF_N = SP_sp_eof_n;
  assign sp_rd_lvds_0_SP_SP_EOF_P = SP_sp_eof_p;
  assign sp_rd_lvds_0_SP_SP_SPI_MISO_N = SP_sp_spi_miso_n;
  assign sp_rd_lvds_0_SP_SP_SPI_MISO_P = SP_sp_spi_miso_p;
  assign sp_rd_lvds_0_SP_SP_UPDATE_N = SP_sp_update_n;
  assign sp_rd_lvds_0_SP_SP_UPDATE_P = SP_sp_update_p;
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
        .ft_full(ft_tx_0_ft_full),
        .ft_ready(ft_tx_0_ft_ready),
        .ft_start(ft_tx_0_ft_start),
        .nrst(util_vector_logic_0_Res),
        .wr_clk(sp_rd_lvds_0_DATA_OUT_wr_clk),
        .wr_data(sp_rd_lvds_0_DATA_OUT_wr_data),
        .wr_en(sp_rd_lvds_0_DATA_OUT_wr_en));
  bd_sys_sp_rd_lvds_0_0 sp_rd_lvds_0
       (.SP_CLK_N(sp_rd_lvds_0_SP_SP_CLK_N),
        .SP_CLK_P(sp_rd_lvds_0_SP_SP_CLK_P),
        .SP_DIN_N(sp_rd_lvds_0_SP_SP_DIN_N),
        .SP_DIN_P(sp_rd_lvds_0_SP_SP_DIN_P),
        .SP_DOUT_N(sp_rd_lvds_0_SP_SP_DOUT_N),
        .SP_DOUT_P(sp_rd_lvds_0_SP_SP_DOUT_P),
        .SP_EOF_N(sp_rd_lvds_0_SP_SP_EOF_N),
        .SP_EOF_P(sp_rd_lvds_0_SP_SP_EOF_P),
        .SP_NRST_N(sp_rd_lvds_0_SP_SP_NRST_N),
        .SP_NRST_P(sp_rd_lvds_0_SP_SP_NRST_P),
        .SP_SPI_CS_N(sp_rd_lvds_0_SP_SP_SPI_CS_N),
        .SP_SPI_CS_P(sp_rd_lvds_0_SP_SP_SPI_CS_P),
        .SP_SPI_MISO_N(sp_rd_lvds_0_SP_SP_SPI_MISO_N),
        .SP_SPI_MISO_P(sp_rd_lvds_0_SP_SP_SPI_MISO_P),
        .SP_SPI_MOSI_N(sp_rd_lvds_0_SP_SP_SPI_MOSI_N),
        .SP_SPI_MOSI_P(sp_rd_lvds_0_SP_SP_SPI_MOSI_P),
        .SP_UPDATE_N(sp_rd_lvds_0_SP_SP_UPDATE_N),
        .SP_UPDATE_P(sp_rd_lvds_0_SP_SP_UPDATE_P),
        .clk(clk_wiz_0_clk_out1),
        .debug(debug_0_1),
        .dout(sp_rd_lvds_0_DATA_OUT_wr_data),
        .dout_clk(sp_rd_lvds_0_DATA_OUT_wr_clk),
        .dout_valid(sp_rd_lvds_0_DATA_OUT_wr_en),
        .nrst(util_vector_logic_0_Res),
        .start(ft_tx_0_ft_start));
  bd_sys_util_vector_logic_0_0 util_vector_logic_0
       (.Op1(rst_1),
        .Res(util_vector_logic_0_Res));
endmodule
