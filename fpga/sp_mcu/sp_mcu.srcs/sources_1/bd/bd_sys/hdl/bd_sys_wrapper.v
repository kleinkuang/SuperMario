//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Mon Mar  1 11:37:29 2021
//Host        : DESKTOP-N45SUQF running 64-bit major release  (build 9200)
//Command     : generate_target bd_sys_wrapper.bd
//Design      : bd_sys_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_sys_wrapper
   (AVDD1_EN,
    AVDD1_ESD_EN,
    DVDD1_EN,
    LED_AVDD1_EN,
    LED_AVDD1_ESD_EN,
    LED_DVDD1_EN,
    LED_VDD2_EN,
    LED_VREF_EN,
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
  output [0:0]DVDD1_EN;
  output [0:0]LED_AVDD1_EN;
  output [0:0]LED_AVDD1_ESD_EN;
  output [0:0]LED_DVDD1_EN;
  output [0:0]LED_VDD2_EN;
  output [0:0]LED_VREF_EN;
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
  wire [0:0]DVDD1_EN;
  wire [0:0]LED_AVDD1_EN;
  wire [0:0]LED_AVDD1_ESD_EN;
  wire [0:0]LED_DVDD1_EN;
  wire [0:0]LED_VDD2_EN;
  wire [0:0]LED_VREF_EN;
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
        .DVDD1_EN(DVDD1_EN),
        .LED_AVDD1_EN(LED_AVDD1_EN),
        .LED_AVDD1_ESD_EN(LED_AVDD1_ESD_EN),
        .LED_DVDD1_EN(LED_DVDD1_EN),
        .LED_VDD2_EN(LED_VDD2_EN),
        .LED_VREF_EN(LED_VREF_EN),
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
