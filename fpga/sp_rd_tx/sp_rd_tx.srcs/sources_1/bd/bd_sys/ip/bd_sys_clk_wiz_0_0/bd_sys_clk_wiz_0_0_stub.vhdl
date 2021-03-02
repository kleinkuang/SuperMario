-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Fri Feb 26 20:54:36 2021
-- Host        : DESKTOP-N45SUQF running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top bd_sys_clk_wiz_0_0 -prefix
--               bd_sys_clk_wiz_0_0_ bd_sys_clk_wiz_0_0_stub.vhdl
-- Design      : bd_sys_clk_wiz_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcvu9p-flga2104-2L-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bd_sys_clk_wiz_0_0 is
  Port ( 
    clk_out1 : out STD_LOGIC;
    clk_in1_p : in STD_LOGIC;
    clk_in1_n : in STD_LOGIC
  );

end bd_sys_clk_wiz_0_0;

architecture stub of bd_sys_clk_wiz_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_out1,clk_in1_p,clk_in1_n";
begin
end;
