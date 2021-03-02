-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Mon Mar  1 16:43:26 2021
-- Host        : DESKTOP-N45SUQF running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               F:/SuperMario/fpga/sp_rd_tx/sp_rd_tx.srcs/sources_1/bd/bd_sys/ip/bd_sys_sp_rd_lvds_0_0/bd_sys_sp_rd_lvds_0_0_stub.vhdl
-- Design      : bd_sys_sp_rd_lvds_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcvu9p-flga2104-2L-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bd_sys_sp_rd_lvds_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    nrst : in STD_LOGIC;
    debug : in STD_LOGIC;
    start : in STD_LOGIC;
    dout_clk : out STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    dout_valid : out STD_LOGIC;
    SP_CLK_P : out STD_LOGIC;
    SP_CLK_N : out STD_LOGIC;
    SP_NRST_P : out STD_LOGIC;
    SP_NRST_N : out STD_LOGIC;
    SP_DIN_P : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SP_DIN_N : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SP_DOUT_P : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SP_DOUT_N : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SP_UPDATE_P : in STD_LOGIC;
    SP_UPDATE_N : in STD_LOGIC;
    SP_EOF_P : in STD_LOGIC;
    SP_EOF_N : in STD_LOGIC;
    SP_SPI_CS_P : out STD_LOGIC;
    SP_SPI_CS_N : out STD_LOGIC;
    SP_SPI_MISO_P : in STD_LOGIC;
    SP_SPI_MISO_N : in STD_LOGIC;
    SP_SPI_MOSI_P : out STD_LOGIC;
    SP_SPI_MOSI_N : out STD_LOGIC
  );

end bd_sys_sp_rd_lvds_0_0;

architecture stub of bd_sys_sp_rd_lvds_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,nrst,debug,start,dout_clk,dout[31:0],dout_valid,SP_CLK_P,SP_CLK_N,SP_NRST_P,SP_NRST_N,SP_DIN_P[7:0],SP_DIN_N[7:0],SP_DOUT_P[7:0],SP_DOUT_N[7:0],SP_UPDATE_P,SP_UPDATE_N,SP_EOF_P,SP_EOF_N,SP_SPI_CS_P,SP_SPI_CS_N,SP_SPI_MISO_P,SP_SPI_MISO_N,SP_SPI_MOSI_P,SP_SPI_MOSI_N";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "sp_rd_lvds,Vivado 2019.1";
begin
end;
