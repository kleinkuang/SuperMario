//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Tue Mar  2 12:07:13 2021
//Host        : DESKTOP-N45SUQF running 64-bit major release  (build 9200)
//Command     : generate_target bd_sys_wrapper.bd
//Design      : bd_sys_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_sys_wrapper
   (AVDD1_EN,
    AVDD1_ESD_EN,
    DDR4_CLK_clk_n,
    DDR4_CLK_clk_p,
    DDR4_act_n,
    DDR4_adr,
    DDR4_ba,
    DDR4_bg,
    DDR4_ck_c,
    DDR4_ck_t,
    DDR4_cke,
    DDR4_cs_n,
    DDR4_dm_n,
    DDR4_dq,
    DDR4_dqs_c,
    DDR4_dqs_t,
    DDR4_odt,
    DDR4_reset_n,
    DVDD1_EN,
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
    LED_AVDD1_EN,
    LED_AVDD1_ESD_EN,
    LED_DVDD1_EN,
    LED_ERROR,
    LED_FULL,
    LED_VDD2_EN,
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
    VBI_CS,
    VBI_MOSI,
    VBI_SCK,
    VDD2_EN,
    VPN_CS,
    VPN_MOSI,
    VPN_SCK,
    VREF_CLR,
    VREF_CS,
    VREF_EN,
    VREF_MOSI,
    VREF_SCK,
    reset,
    rs232_uart_rxd,
    rs232_uart_txd,
    sysclk_125_clk_n,
    sysclk_125_clk_p);
  output [0:0]AVDD1_EN;
  output [0:0]AVDD1_ESD_EN;
  input DDR4_CLK_clk_n;
  input DDR4_CLK_clk_p;
  output DDR4_act_n;
  output [16:0]DDR4_adr;
  output [1:0]DDR4_ba;
  output DDR4_bg;
  output DDR4_ck_c;
  output DDR4_ck_t;
  output DDR4_cke;
  output DDR4_cs_n;
  inout [7:0]DDR4_dm_n;
  inout [63:0]DDR4_dq;
  inout [7:0]DDR4_dqs_c;
  inout [7:0]DDR4_dqs_t;
  output DDR4_odt;
  output DDR4_reset_n;
  output [0:0]DVDD1_EN;
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
  output [0:0]LED_AVDD1_EN;
  output [0:0]LED_AVDD1_ESD_EN;
  output [0:0]LED_DVDD1_EN;
  output LED_ERROR;
  output LED_FULL;
  output [0:0]LED_VDD2_EN;
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
  output VBI_CS;
  output VBI_MOSI;
  output VBI_SCK;
  output [0:0]VDD2_EN;
  output VPN_CS;
  output VPN_MOSI;
  output VPN_SCK;
  output [0:0]VREF_CLR;
  output VREF_CS;
  output [0:0]VREF_EN;
  output VREF_MOSI;
  output VREF_SCK;
  input reset;
  input rs232_uart_rxd;
  output rs232_uart_txd;
  input sysclk_125_clk_n;
  input sysclk_125_clk_p;

  wire [0:0]AVDD1_EN;
  wire [0:0]AVDD1_ESD_EN;
  wire DDR4_CLK_clk_n;
  wire DDR4_CLK_clk_p;
  wire DDR4_act_n;
  wire [16:0]DDR4_adr;
  wire [1:0]DDR4_ba;
  wire DDR4_bg;
  wire DDR4_ck_c;
  wire DDR4_ck_t;
  wire DDR4_cke;
  wire DDR4_cs_n;
  wire [7:0]DDR4_dm_n;
  wire [63:0]DDR4_dq;
  wire [7:0]DDR4_dqs_c;
  wire [7:0]DDR4_dqs_t;
  wire DDR4_odt;
  wire DDR4_reset_n;
  wire [0:0]DVDD1_EN;
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
  wire [0:0]LED_AVDD1_EN;
  wire [0:0]LED_AVDD1_ESD_EN;
  wire [0:0]LED_DVDD1_EN;
  wire LED_ERROR;
  wire LED_FULL;
  wire [0:0]LED_VDD2_EN;
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
  wire VBI_CS;
  wire VBI_MOSI;
  wire VBI_SCK;
  wire [0:0]VDD2_EN;
  wire VPN_CS;
  wire VPN_MOSI;
  wire VPN_SCK;
  wire [0:0]VREF_CLR;
  wire VREF_CS;
  wire [0:0]VREF_EN;
  wire VREF_MOSI;
  wire VREF_SCK;
  wire reset;
  wire rs232_uart_rxd;
  wire rs232_uart_txd;
  wire sysclk_125_clk_n;
  wire sysclk_125_clk_p;

  bd_sys bd_sys_i
       (.AVDD1_EN(AVDD1_EN),
        .AVDD1_ESD_EN(AVDD1_ESD_EN),
        .DDR4_CLK_clk_n(DDR4_CLK_clk_n),
        .DDR4_CLK_clk_p(DDR4_CLK_clk_p),
        .DDR4_act_n(DDR4_act_n),
        .DDR4_adr(DDR4_adr),
        .DDR4_ba(DDR4_ba),
        .DDR4_bg(DDR4_bg),
        .DDR4_ck_c(DDR4_ck_c),
        .DDR4_ck_t(DDR4_ck_t),
        .DDR4_cke(DDR4_cke),
        .DDR4_cs_n(DDR4_cs_n),
        .DDR4_dm_n(DDR4_dm_n),
        .DDR4_dq(DDR4_dq),
        .DDR4_dqs_c(DDR4_dqs_c),
        .DDR4_dqs_t(DDR4_dqs_t),
        .DDR4_odt(DDR4_odt),
        .DDR4_reset_n(DDR4_reset_n),
        .DVDD1_EN(DVDD1_EN),
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
        .LED_AVDD1_EN(LED_AVDD1_EN),
        .LED_AVDD1_ESD_EN(LED_AVDD1_ESD_EN),
        .LED_DVDD1_EN(LED_DVDD1_EN),
        .LED_ERROR(LED_ERROR),
        .LED_FULL(LED_FULL),
        .LED_VDD2_EN(LED_VDD2_EN),
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
        .VBI_CS(VBI_CS),
        .VBI_MOSI(VBI_MOSI),
        .VBI_SCK(VBI_SCK),
        .VDD2_EN(VDD2_EN),
        .VPN_CS(VPN_CS),
        .VPN_MOSI(VPN_MOSI),
        .VPN_SCK(VPN_SCK),
        .VREF_CLR(VREF_CLR),
        .VREF_CS(VREF_CS),
        .VREF_EN(VREF_EN),
        .VREF_MOSI(VREF_MOSI),
        .VREF_SCK(VREF_SCK),
        .reset(reset),
        .rs232_uart_rxd(rs232_uart_rxd),
        .rs232_uart_txd(rs232_uart_txd),
        .sysclk_125_clk_n(sysclk_125_clk_n),
        .sysclk_125_clk_p(sysclk_125_clk_p));
endmodule
