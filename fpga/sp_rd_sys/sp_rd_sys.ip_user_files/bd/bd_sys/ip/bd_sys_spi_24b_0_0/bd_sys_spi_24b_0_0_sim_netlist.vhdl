-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Mon Mar  1 12:04:15 2021
-- Host        : DESKTOP-N45SUQF running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               F:/SuperMario/fpga/sp_rd_sys/sp_rd_sys.srcs/sources_1/bd/bd_sys/ip/bd_sys_spi_24b_0_0/bd_sys_spi_24b_0_0_sim_netlist.vhdl
-- Design      : bd_sys_spi_24b_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcvu9p-flga2104-2L-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_sys_spi_24b_0_0_spi_24b is
  port (
    SPI_CS : out STD_LOGIC;
    spi_done : out STD_LOGIC;
    SPI_MOSI : out STD_LOGIC;
    sck_int_reg_0 : out STD_LOGIC;
    clk : in STD_LOGIC;
    spi_data_out : in STD_LOGIC_VECTOR ( 23 downto 0 );
    spi_en : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_sys_spi_24b_0_0_spi_24b : entity is "spi_24b";
end bd_sys_spi_24b_0_0_spi_24b;

architecture STRUCTURE of bd_sys_spi_24b_0_0_spi_24b is
  signal \FSM_sequential_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \clk_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \clk_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \clk_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \clk_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal clk_cnt_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \clk_pulse__2\ : STD_LOGIC;
  signal data_out_cnt : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \data_out_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \data_out_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \data_out_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \data_out_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \data_out_cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal data_out_reg : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal \data_out_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \data_out_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \data_out_reg_reg_n_0_[10]\ : STD_LOGIC;
  signal \data_out_reg_reg_n_0_[11]\ : STD_LOGIC;
  signal \data_out_reg_reg_n_0_[12]\ : STD_LOGIC;
  signal \data_out_reg_reg_n_0_[13]\ : STD_LOGIC;
  signal \data_out_reg_reg_n_0_[14]\ : STD_LOGIC;
  signal \data_out_reg_reg_n_0_[15]\ : STD_LOGIC;
  signal \data_out_reg_reg_n_0_[16]\ : STD_LOGIC;
  signal \data_out_reg_reg_n_0_[17]\ : STD_LOGIC;
  signal \data_out_reg_reg_n_0_[18]\ : STD_LOGIC;
  signal \data_out_reg_reg_n_0_[19]\ : STD_LOGIC;
  signal \data_out_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \data_out_reg_reg_n_0_[20]\ : STD_LOGIC;
  signal \data_out_reg_reg_n_0_[21]\ : STD_LOGIC;
  signal \data_out_reg_reg_n_0_[22]\ : STD_LOGIC;
  signal \data_out_reg_reg_n_0_[23]\ : STD_LOGIC;
  signal \data_out_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \data_out_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \data_out_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \data_out_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \data_out_reg_reg_n_0_[6]\ : STD_LOGIC;
  signal \data_out_reg_reg_n_0_[7]\ : STD_LOGIC;
  signal \data_out_reg_reg_n_0_[8]\ : STD_LOGIC;
  signal \data_out_reg_reg_n_0_[9]\ : STD_LOGIC;
  signal sck_int_i_1_n_0 : STD_LOGIC;
  signal sck_int_i_2_n_0 : STD_LOGIC;
  signal \^sck_int_reg_0\ : STD_LOGIC;
  signal \state0__4\ : STD_LOGIC;
  signal \state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_2\ : label is "soft_lutpair5";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "idle:00,busy:01,done:10,";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "idle:00,busy:01,done:10,";
  attribute SOFT_HLUTNM of SPI_CS_INST_0 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \clk_cnt[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \clk_cnt[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \clk_cnt[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \data_out_cnt[0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \data_out_cnt[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \data_out_cnt[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \data_out_cnt[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \data_out_reg[0]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \data_out_reg[10]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \data_out_reg[11]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \data_out_reg[12]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \data_out_reg[13]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \data_out_reg[14]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \data_out_reg[15]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \data_out_reg[16]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \data_out_reg[17]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \data_out_reg[18]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \data_out_reg[19]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \data_out_reg[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \data_out_reg[20]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \data_out_reg[21]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \data_out_reg[22]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \data_out_reg[23]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \data_out_reg[24]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \data_out_reg[2]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \data_out_reg[3]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \data_out_reg[5]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \data_out_reg[6]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \data_out_reg[7]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \data_out_reg[8]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \data_out_reg[9]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of sck_int_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of sck_int_i_4 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of spi_done_INST_0 : label is "soft_lutpair4";
begin
  sck_int_reg_0 <= \^sck_int_reg_0\;
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \state__0\(1),
      O => \FSM_sequential_state[0]_i_1_n_0\
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"55D5"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \clk_pulse__2\,
      I2 => \state0__4\,
      I3 => \state__0\(1),
      O => \FSM_sequential_state[1]_i_1_n_0\
    );
\FSM_sequential_state[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \state__0\(1),
      O => \FSM_sequential_state[1]_i_2_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_sequential_state[1]_i_1_n_0\,
      CLR => sck_int_i_2_n_0,
      D => \FSM_sequential_state[0]_i_1_n_0\,
      Q => \state__0\(0)
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_sequential_state[1]_i_1_n_0\,
      CLR => sck_int_i_2_n_0,
      D => \FSM_sequential_state[1]_i_2_n_0\,
      Q => \state__0\(1)
    );
SPI_CS_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(0),
      O => SPI_CS
    );
\clk_cnt[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5551"
    )
        port map (
      I0 => clk_cnt_reg(0),
      I1 => clk_cnt_reg(2),
      I2 => clk_cnt_reg(1),
      I3 => clk_cnt_reg(3),
      O => \clk_cnt[0]_i_1_n_0\
    );
\clk_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => clk_cnt_reg(0),
      I1 => clk_cnt_reg(1),
      O => \clk_cnt[1]_i_1_n_0\
    );
\clk_cnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6C68"
    )
        port map (
      I0 => clk_cnt_reg(0),
      I1 => clk_cnt_reg(2),
      I2 => clk_cnt_reg(1),
      I3 => clk_cnt_reg(3),
      O => \clk_cnt[2]_i_1_n_0\
    );
\clk_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => clk_cnt_reg(0),
      I1 => clk_cnt_reg(2),
      I2 => clk_cnt_reg(1),
      I3 => clk_cnt_reg(3),
      O => \clk_cnt[3]_i_1_n_0\
    );
\clk_cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \FSM_sequential_state[0]_i_1_n_0\,
      D => \clk_cnt[0]_i_1_n_0\,
      Q => clk_cnt_reg(0)
    );
\clk_cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \FSM_sequential_state[0]_i_1_n_0\,
      D => \clk_cnt[1]_i_1_n_0\,
      Q => clk_cnt_reg(1)
    );
\clk_cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \FSM_sequential_state[0]_i_1_n_0\,
      D => \clk_cnt[2]_i_1_n_0\,
      Q => clk_cnt_reg(2)
    );
\clk_cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \FSM_sequential_state[0]_i_1_n_0\,
      D => \clk_cnt[3]_i_1_n_0\,
      Q => clk_cnt_reg(3)
    );
\data_out_cnt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \data_out_cnt_reg_n_0_[0]\,
      O => data_out_cnt(0)
    );
\data_out_cnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \data_out_cnt_reg_n_0_[0]\,
      I2 => \data_out_cnt_reg_n_0_[1]\,
      O => data_out_cnt(1)
    );
\data_out_cnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \data_out_cnt_reg_n_0_[0]\,
      I2 => \data_out_cnt_reg_n_0_[1]\,
      I3 => \data_out_cnt_reg_n_0_[2]\,
      O => data_out_cnt(2)
    );
\data_out_cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \data_out_cnt_reg_n_0_[1]\,
      I2 => \data_out_cnt_reg_n_0_[0]\,
      I3 => \data_out_cnt_reg_n_0_[2]\,
      I4 => \data_out_cnt_reg_n_0_[3]\,
      O => data_out_cnt(3)
    );
\data_out_cnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F00FF0080000000"
    )
        port map (
      I0 => \data_out_cnt_reg_n_0_[2]\,
      I1 => \data_out_cnt_reg_n_0_[0]\,
      I2 => \data_out_cnt_reg_n_0_[1]\,
      I3 => \state__0\(0),
      I4 => \data_out_cnt_reg_n_0_[3]\,
      I5 => \data_out_cnt_reg_n_0_[4]\,
      O => data_out_cnt(4)
    );
\data_out_cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out_reg[24]_i_1_n_0\,
      CLR => sck_int_i_2_n_0,
      D => data_out_cnt(0),
      Q => \data_out_cnt_reg_n_0_[0]\
    );
\data_out_cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out_reg[24]_i_1_n_0\,
      CLR => sck_int_i_2_n_0,
      D => data_out_cnt(1),
      Q => \data_out_cnt_reg_n_0_[1]\
    );
\data_out_cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out_reg[24]_i_1_n_0\,
      CLR => sck_int_i_2_n_0,
      D => data_out_cnt(2),
      Q => \data_out_cnt_reg_n_0_[2]\
    );
\data_out_cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out_reg[24]_i_1_n_0\,
      CLR => sck_int_i_2_n_0,
      D => data_out_cnt(3),
      Q => \data_out_cnt_reg_n_0_[3]\
    );
\data_out_cnt_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out_reg[24]_i_1_n_0\,
      CLR => sck_int_i_2_n_0,
      D => data_out_cnt(4),
      Q => \data_out_cnt_reg_n_0_[4]\
    );
\data_out_reg[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => spi_data_out(0),
      I1 => \state__0\(0),
      O => data_out_reg(0)
    );
\data_out_reg[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => spi_data_out(10),
      I1 => \state__0\(0),
      I2 => \data_out_reg_reg_n_0_[9]\,
      O => data_out_reg(10)
    );
\data_out_reg[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => spi_data_out(11),
      I1 => \state__0\(0),
      I2 => \data_out_reg_reg_n_0_[10]\,
      O => data_out_reg(11)
    );
\data_out_reg[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => spi_data_out(12),
      I1 => \state__0\(0),
      I2 => \data_out_reg_reg_n_0_[11]\,
      O => data_out_reg(12)
    );
\data_out_reg[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => spi_data_out(13),
      I1 => \state__0\(0),
      I2 => \data_out_reg_reg_n_0_[12]\,
      O => data_out_reg(13)
    );
\data_out_reg[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => spi_data_out(14),
      I1 => \state__0\(0),
      I2 => \data_out_reg_reg_n_0_[13]\,
      O => data_out_reg(14)
    );
\data_out_reg[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => spi_data_out(15),
      I1 => \state__0\(0),
      I2 => \data_out_reg_reg_n_0_[14]\,
      O => data_out_reg(15)
    );
\data_out_reg[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => spi_data_out(16),
      I1 => \state__0\(0),
      I2 => \data_out_reg_reg_n_0_[15]\,
      O => data_out_reg(16)
    );
\data_out_reg[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => spi_data_out(17),
      I1 => \state__0\(0),
      I2 => \data_out_reg_reg_n_0_[16]\,
      O => data_out_reg(17)
    );
\data_out_reg[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => spi_data_out(18),
      I1 => \state__0\(0),
      I2 => \data_out_reg_reg_n_0_[17]\,
      O => data_out_reg(18)
    );
\data_out_reg[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => spi_data_out(19),
      I1 => \state__0\(0),
      I2 => \data_out_reg_reg_n_0_[18]\,
      O => data_out_reg(19)
    );
\data_out_reg[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => spi_data_out(1),
      I1 => \state__0\(0),
      I2 => \data_out_reg_reg_n_0_[0]\,
      O => data_out_reg(1)
    );
\data_out_reg[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => spi_data_out(20),
      I1 => \state__0\(0),
      I2 => \data_out_reg_reg_n_0_[19]\,
      O => data_out_reg(20)
    );
\data_out_reg[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => spi_data_out(21),
      I1 => \state__0\(0),
      I2 => \data_out_reg_reg_n_0_[20]\,
      O => data_out_reg(21)
    );
\data_out_reg[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => spi_data_out(22),
      I1 => \state__0\(0),
      I2 => \data_out_reg_reg_n_0_[21]\,
      O => data_out_reg(22)
    );
\data_out_reg[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => spi_data_out(23),
      I1 => \state__0\(0),
      I2 => \data_out_reg_reg_n_0_[22]\,
      O => data_out_reg(23)
    );
\data_out_reg[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00045555"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \clk_pulse__2\,
      I2 => \^sck_int_reg_0\,
      I3 => \state0__4\,
      I4 => \state__0\(0),
      O => \data_out_reg[24]_i_1_n_0\
    );
\data_out_reg[24]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \data_out_reg_reg_n_0_[23]\,
      O => data_out_reg(24)
    );
\data_out_reg[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => spi_data_out(2),
      I1 => \state__0\(0),
      I2 => \data_out_reg_reg_n_0_[1]\,
      O => data_out_reg(2)
    );
\data_out_reg[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => spi_data_out(3),
      I1 => \state__0\(0),
      I2 => \data_out_reg_reg_n_0_[2]\,
      O => data_out_reg(3)
    );
\data_out_reg[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => spi_data_out(4),
      I1 => \state__0\(0),
      I2 => \data_out_reg_reg_n_0_[3]\,
      O => data_out_reg(4)
    );
\data_out_reg[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => spi_data_out(5),
      I1 => \state__0\(0),
      I2 => \data_out_reg_reg_n_0_[4]\,
      O => data_out_reg(5)
    );
\data_out_reg[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => spi_data_out(6),
      I1 => \state__0\(0),
      I2 => \data_out_reg_reg_n_0_[5]\,
      O => data_out_reg(6)
    );
\data_out_reg[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => spi_data_out(7),
      I1 => \state__0\(0),
      I2 => \data_out_reg_reg_n_0_[6]\,
      O => data_out_reg(7)
    );
\data_out_reg[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => spi_data_out(8),
      I1 => \state__0\(0),
      I2 => \data_out_reg_reg_n_0_[7]\,
      O => data_out_reg(8)
    );
\data_out_reg[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => spi_data_out(9),
      I1 => \state__0\(0),
      I2 => \data_out_reg_reg_n_0_[8]\,
      O => data_out_reg(9)
    );
\data_out_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out_reg[24]_i_1_n_0\,
      CLR => sck_int_i_2_n_0,
      D => data_out_reg(0),
      Q => \data_out_reg_reg_n_0_[0]\
    );
\data_out_reg_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out_reg[24]_i_1_n_0\,
      CLR => sck_int_i_2_n_0,
      D => data_out_reg(10),
      Q => \data_out_reg_reg_n_0_[10]\
    );
\data_out_reg_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out_reg[24]_i_1_n_0\,
      CLR => sck_int_i_2_n_0,
      D => data_out_reg(11),
      Q => \data_out_reg_reg_n_0_[11]\
    );
\data_out_reg_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out_reg[24]_i_1_n_0\,
      CLR => sck_int_i_2_n_0,
      D => data_out_reg(12),
      Q => \data_out_reg_reg_n_0_[12]\
    );
\data_out_reg_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out_reg[24]_i_1_n_0\,
      CLR => sck_int_i_2_n_0,
      D => data_out_reg(13),
      Q => \data_out_reg_reg_n_0_[13]\
    );
\data_out_reg_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out_reg[24]_i_1_n_0\,
      CLR => sck_int_i_2_n_0,
      D => data_out_reg(14),
      Q => \data_out_reg_reg_n_0_[14]\
    );
\data_out_reg_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out_reg[24]_i_1_n_0\,
      CLR => sck_int_i_2_n_0,
      D => data_out_reg(15),
      Q => \data_out_reg_reg_n_0_[15]\
    );
\data_out_reg_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out_reg[24]_i_1_n_0\,
      CLR => sck_int_i_2_n_0,
      D => data_out_reg(16),
      Q => \data_out_reg_reg_n_0_[16]\
    );
\data_out_reg_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out_reg[24]_i_1_n_0\,
      CLR => sck_int_i_2_n_0,
      D => data_out_reg(17),
      Q => \data_out_reg_reg_n_0_[17]\
    );
\data_out_reg_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out_reg[24]_i_1_n_0\,
      CLR => sck_int_i_2_n_0,
      D => data_out_reg(18),
      Q => \data_out_reg_reg_n_0_[18]\
    );
\data_out_reg_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out_reg[24]_i_1_n_0\,
      CLR => sck_int_i_2_n_0,
      D => data_out_reg(19),
      Q => \data_out_reg_reg_n_0_[19]\
    );
\data_out_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out_reg[24]_i_1_n_0\,
      CLR => sck_int_i_2_n_0,
      D => data_out_reg(1),
      Q => \data_out_reg_reg_n_0_[1]\
    );
\data_out_reg_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out_reg[24]_i_1_n_0\,
      CLR => sck_int_i_2_n_0,
      D => data_out_reg(20),
      Q => \data_out_reg_reg_n_0_[20]\
    );
\data_out_reg_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out_reg[24]_i_1_n_0\,
      CLR => sck_int_i_2_n_0,
      D => data_out_reg(21),
      Q => \data_out_reg_reg_n_0_[21]\
    );
\data_out_reg_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out_reg[24]_i_1_n_0\,
      CLR => sck_int_i_2_n_0,
      D => data_out_reg(22),
      Q => \data_out_reg_reg_n_0_[22]\
    );
\data_out_reg_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out_reg[24]_i_1_n_0\,
      CLR => sck_int_i_2_n_0,
      D => data_out_reg(23),
      Q => \data_out_reg_reg_n_0_[23]\
    );
\data_out_reg_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out_reg[24]_i_1_n_0\,
      CLR => sck_int_i_2_n_0,
      D => data_out_reg(24),
      Q => SPI_MOSI
    );
\data_out_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out_reg[24]_i_1_n_0\,
      CLR => sck_int_i_2_n_0,
      D => data_out_reg(2),
      Q => \data_out_reg_reg_n_0_[2]\
    );
\data_out_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out_reg[24]_i_1_n_0\,
      CLR => sck_int_i_2_n_0,
      D => data_out_reg(3),
      Q => \data_out_reg_reg_n_0_[3]\
    );
\data_out_reg_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out_reg[24]_i_1_n_0\,
      CLR => sck_int_i_2_n_0,
      D => data_out_reg(4),
      Q => \data_out_reg_reg_n_0_[4]\
    );
\data_out_reg_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out_reg[24]_i_1_n_0\,
      CLR => sck_int_i_2_n_0,
      D => data_out_reg(5),
      Q => \data_out_reg_reg_n_0_[5]\
    );
\data_out_reg_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out_reg[24]_i_1_n_0\,
      CLR => sck_int_i_2_n_0,
      D => data_out_reg(6),
      Q => \data_out_reg_reg_n_0_[6]\
    );
\data_out_reg_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out_reg[24]_i_1_n_0\,
      CLR => sck_int_i_2_n_0,
      D => data_out_reg(7),
      Q => \data_out_reg_reg_n_0_[7]\
    );
\data_out_reg_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out_reg[24]_i_1_n_0\,
      CLR => sck_int_i_2_n_0,
      D => data_out_reg(8),
      Q => \data_out_reg_reg_n_0_[8]\
    );
\data_out_reg_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \data_out_reg[24]_i_1_n_0\,
      CLR => sck_int_i_2_n_0,
      D => data_out_reg(9),
      Q => \data_out_reg_reg_n_0_[9]\
    );
sck_int_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0040"
    )
        port map (
      I0 => \state0__4\,
      I1 => \clk_pulse__2\,
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      I4 => \^sck_int_reg_0\,
      O => sck_int_i_1_n_0
    );
sck_int_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => spi_en,
      O => sck_int_i_2_n_0
    );
sck_int_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000100000"
    )
        port map (
      I0 => \data_out_cnt_reg_n_0_[0]\,
      I1 => \data_out_cnt_reg_n_0_[1]\,
      I2 => \data_out_cnt_reg_n_0_[3]\,
      I3 => \data_out_cnt_reg_n_0_[2]\,
      I4 => \data_out_cnt_reg_n_0_[4]\,
      I5 => \^sck_int_reg_0\,
      O => \state0__4\
    );
sck_int_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => clk_cnt_reg(3),
      I1 => clk_cnt_reg(1),
      I2 => clk_cnt_reg(2),
      I3 => clk_cnt_reg(0),
      O => \clk_pulse__2\
    );
sck_int_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => sck_int_i_2_n_0,
      D => sck_int_i_1_n_0,
      Q => \^sck_int_reg_0\
    );
spi_done_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(0),
      O => spi_done
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_sys_spi_24b_0_0 is
  port (
    clk : in STD_LOGIC;
    spi_en : in STD_LOGIC;
    spi_data_out : in STD_LOGIC_VECTOR ( 23 downto 0 );
    spi_done : out STD_LOGIC;
    SPI_SCK : out STD_LOGIC;
    SPI_CS : out STD_LOGIC;
    SPI_MOSI : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of bd_sys_spi_24b_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of bd_sys_spi_24b_0_0 : entity is "bd_sys_spi_24b_0_0,spi_24b,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of bd_sys_spi_24b_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of bd_sys_spi_24b_0_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of bd_sys_spi_24b_0_0 : entity is "spi_24b,Vivado 2019.1";
end bd_sys_spi_24b_0_0;

architecture STRUCTURE of bd_sys_spi_24b_0_0 is
begin
inst: entity work.bd_sys_spi_24b_0_0_spi_24b
     port map (
      SPI_CS => SPI_CS,
      SPI_MOSI => SPI_MOSI,
      clk => clk,
      sck_int_reg_0 => SPI_SCK,
      spi_data_out(23 downto 0) => spi_data_out(23 downto 0),
      spi_done => spi_done,
      spi_en => spi_en
    );
end STRUCTURE;
