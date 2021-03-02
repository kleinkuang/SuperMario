-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Mon Mar  1 17:57:51 2021
-- Host        : DESKTOP-N45SUQF running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               f:/SuperMario/fpga/ft_tx_debug/ft_tx_debug.srcs/sources_1/bd/bd_sys/ip/bd_sys_ft_tx_0_1/bd_sys_ft_tx_0_1_stub.vhdl
-- Design      : bd_sys_ft_tx_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcvu9p-flga2104-2L-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bd_sys_ft_tx_0_1 is
  Port ( 
    nrst : in STD_LOGIC;
    ft_ready : out STD_LOGIC;
    ft_start : out STD_LOGIC;
    wr_clk : out STD_LOGIC;
    wr_en : in STD_LOGIC;
    wr_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    wr_full : out STD_LOGIC;
    FT_CLK : in STD_LOGIC;
    FT_NRST : out STD_LOGIC;
    FT_TXE_N : in STD_LOGIC;
    FT_RXF_N : in STD_LOGIC;
    FT_WR_N : out STD_LOGIC;
    FT_RD_N : out STD_LOGIC;
    FT_OE_N : out STD_LOGIC;
    FT_BE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    FT_DATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    FT_SIWU_N : out STD_LOGIC
  );

end bd_sys_ft_tx_0_1;

architecture stub of bd_sys_ft_tx_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "nrst,ft_ready,ft_start,wr_clk,wr_en,wr_data[31:0],wr_full,FT_CLK,FT_NRST,FT_TXE_N,FT_RXF_N,FT_WR_N,FT_RD_N,FT_OE_N,FT_BE[3:0],FT_DATA[31:0],FT_SIWU_N";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "ft_tx,Vivado 2019.1";
begin
end;
