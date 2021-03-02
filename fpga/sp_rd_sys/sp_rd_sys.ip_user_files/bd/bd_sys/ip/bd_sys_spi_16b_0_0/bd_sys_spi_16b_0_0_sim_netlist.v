// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Mon Mar  1 12:04:15 2021
// Host        : DESKTOP-N45SUQF running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               F:/SuperMario/fpga/sp_rd_sys/sp_rd_sys.srcs/sources_1/bd/bd_sys/ip/bd_sys_spi_16b_0_0/bd_sys_spi_16b_0_0_sim_netlist.v
// Design      : bd_sys_spi_16b_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcvu9p-flga2104-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_sys_spi_16b_0_0,spi_16b,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "spi_16b,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module bd_sys_spi_16b_0_0
   (clk,
    spi_en,
    spi_data_out,
    spi_done,
    SPI_SCK,
    SPI_CS,
    SPI_MOSI);
  input clk;
  input spi_en;
  input [15:0]spi_data_out;
  output spi_done;
  output SPI_SCK;
  output SPI_CS;
  output SPI_MOSI;

  wire SPI_CS;
  wire SPI_MOSI;
  wire SPI_SCK;
  wire clk;
  wire [15:0]spi_data_out;
  wire spi_done;
  wire spi_en;

  bd_sys_spi_16b_0_0_spi_16b inst
       (.SPI_CS(SPI_CS),
        .SPI_MOSI(SPI_MOSI),
        .SPI_SCK(SPI_SCK),
        .clk(clk),
        .spi_data_out(spi_data_out),
        .spi_done(spi_done),
        .spi_en(spi_en));
endmodule

(* ORIG_REF_NAME = "spi_16b" *) 
module bd_sys_spi_16b_0_0_spi_16b
   (SPI_CS,
    spi_done,
    SPI_MOSI,
    SPI_SCK,
    clk,
    spi_data_out,
    spi_en);
  output SPI_CS;
  output spi_done;
  output SPI_MOSI;
  output SPI_SCK;
  input clk;
  input [15:0]spi_data_out;
  input spi_en;

  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_2_n_0 ;
  wire SPI_CS;
  wire SPI_MOSI;
  wire SPI_SCK;
  wire clk;
  wire \clk_cnt[0]_i_1_n_0 ;
  wire \clk_cnt[1]_i_1_n_0 ;
  wire \clk_cnt[2]_i_1_n_0 ;
  wire \clk_cnt[3]_i_1_n_0 ;
  wire [3:0]clk_cnt_reg;
  wire clk_pulse__2;
  wire [4:0]data_out_cnt;
  wire \data_out_cnt_reg_n_0_[0] ;
  wire \data_out_cnt_reg_n_0_[1] ;
  wire \data_out_cnt_reg_n_0_[2] ;
  wire \data_out_cnt_reg_n_0_[3] ;
  wire \data_out_cnt_reg_n_0_[4] ;
  wire [16:0]data_out_reg;
  wire \data_out_reg[16]_i_1_n_0 ;
  wire \data_out_reg[16]_i_3_n_0 ;
  wire \data_out_reg_reg_n_0_[0] ;
  wire \data_out_reg_reg_n_0_[10] ;
  wire \data_out_reg_reg_n_0_[11] ;
  wire \data_out_reg_reg_n_0_[12] ;
  wire \data_out_reg_reg_n_0_[13] ;
  wire \data_out_reg_reg_n_0_[14] ;
  wire \data_out_reg_reg_n_0_[15] ;
  wire \data_out_reg_reg_n_0_[1] ;
  wire \data_out_reg_reg_n_0_[2] ;
  wire \data_out_reg_reg_n_0_[3] ;
  wire \data_out_reg_reg_n_0_[4] ;
  wire \data_out_reg_reg_n_0_[5] ;
  wire \data_out_reg_reg_n_0_[6] ;
  wire \data_out_reg_reg_n_0_[7] ;
  wire \data_out_reg_reg_n_0_[8] ;
  wire \data_out_reg_reg_n_0_[9] ;
  wire sck_int_i_1_n_0;
  wire sck_int_reg_n_0;
  wire [15:0]spi_data_out;
  wire spi_done;
  wire spi_en;
  wire state0__4;
  wire [1:0]state__0;

  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(state__0[0]),
        .I1(state__0[1]),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h55D5)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(state__0[0]),
        .I1(clk_pulse__2),
        .I2(state0__4),
        .I3(state__0[1]),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(state__0[0]),
        .I1(state__0[1]),
        .O(\FSM_sequential_state[1]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "idle:00,busy:01,done:10," *) 
  FDCE \FSM_sequential_state_reg[0] 
       (.C(clk),
        .CE(\FSM_sequential_state[1]_i_1_n_0 ),
        .CLR(\data_out_reg[16]_i_3_n_0 ),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state__0[0]));
  (* FSM_ENCODED_STATES = "idle:00,busy:01,done:10," *) 
  FDCE \FSM_sequential_state_reg[1] 
       (.C(clk),
        .CE(\FSM_sequential_state[1]_i_1_n_0 ),
        .CLR(\data_out_reg[16]_i_3_n_0 ),
        .D(\FSM_sequential_state[1]_i_2_n_0 ),
        .Q(state__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hB)) 
    SPI_CS_INST_0
       (.I0(state__0[1]),
        .I1(state__0[0]),
        .O(SPI_CS));
  LUT1 #(
    .INIT(2'h1)) 
    SPI_SCK_INST_0
       (.I0(sck_int_reg_n_0),
        .O(SPI_SCK));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h5551)) 
    \clk_cnt[0]_i_1 
       (.I0(clk_cnt_reg[0]),
        .I1(clk_cnt_reg[2]),
        .I2(clk_cnt_reg[1]),
        .I3(clk_cnt_reg[3]),
        .O(\clk_cnt[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \clk_cnt[1]_i_1 
       (.I0(clk_cnt_reg[0]),
        .I1(clk_cnt_reg[1]),
        .O(\clk_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h6C68)) 
    \clk_cnt[2]_i_1 
       (.I0(clk_cnt_reg[0]),
        .I1(clk_cnt_reg[2]),
        .I2(clk_cnt_reg[1]),
        .I3(clk_cnt_reg[3]),
        .O(\clk_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \clk_cnt[3]_i_1 
       (.I0(clk_cnt_reg[0]),
        .I1(clk_cnt_reg[2]),
        .I2(clk_cnt_reg[1]),
        .I3(clk_cnt_reg[3]),
        .O(\clk_cnt[3]_i_1_n_0 ));
  FDCE \clk_cnt_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\FSM_sequential_state[0]_i_1_n_0 ),
        .D(\clk_cnt[0]_i_1_n_0 ),
        .Q(clk_cnt_reg[0]));
  FDCE \clk_cnt_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\FSM_sequential_state[0]_i_1_n_0 ),
        .D(\clk_cnt[1]_i_1_n_0 ),
        .Q(clk_cnt_reg[1]));
  FDCE \clk_cnt_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\FSM_sequential_state[0]_i_1_n_0 ),
        .D(\clk_cnt[2]_i_1_n_0 ),
        .Q(clk_cnt_reg[2]));
  FDCE \clk_cnt_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\FSM_sequential_state[0]_i_1_n_0 ),
        .D(\clk_cnt[3]_i_1_n_0 ),
        .Q(clk_cnt_reg[3]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_out_cnt[0]_i_1 
       (.I0(state__0[0]),
        .I1(\data_out_cnt_reg_n_0_[0] ),
        .O(data_out_cnt[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \data_out_cnt[1]_i_1 
       (.I0(state__0[0]),
        .I1(\data_out_cnt_reg_n_0_[0] ),
        .I2(\data_out_cnt_reg_n_0_[1] ),
        .O(data_out_cnt[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \data_out_cnt[2]_i_1 
       (.I0(state__0[0]),
        .I1(\data_out_cnt_reg_n_0_[0] ),
        .I2(\data_out_cnt_reg_n_0_[1] ),
        .I3(\data_out_cnt_reg_n_0_[2] ),
        .O(data_out_cnt[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \data_out_cnt[3]_i_1 
       (.I0(state__0[0]),
        .I1(\data_out_cnt_reg_n_0_[1] ),
        .I2(\data_out_cnt_reg_n_0_[0] ),
        .I3(\data_out_cnt_reg_n_0_[2] ),
        .I4(\data_out_cnt_reg_n_0_[3] ),
        .O(data_out_cnt[3]));
  LUT6 #(
    .INIT(64'h7F00FF0080000000)) 
    \data_out_cnt[4]_i_1 
       (.I0(\data_out_cnt_reg_n_0_[2] ),
        .I1(\data_out_cnt_reg_n_0_[0] ),
        .I2(\data_out_cnt_reg_n_0_[1] ),
        .I3(state__0[0]),
        .I4(\data_out_cnt_reg_n_0_[3] ),
        .I5(\data_out_cnt_reg_n_0_[4] ),
        .O(data_out_cnt[4]));
  FDCE \data_out_cnt_reg[0] 
       (.C(clk),
        .CE(\data_out_reg[16]_i_1_n_0 ),
        .CLR(\data_out_reg[16]_i_3_n_0 ),
        .D(data_out_cnt[0]),
        .Q(\data_out_cnt_reg_n_0_[0] ));
  FDCE \data_out_cnt_reg[1] 
       (.C(clk),
        .CE(\data_out_reg[16]_i_1_n_0 ),
        .CLR(\data_out_reg[16]_i_3_n_0 ),
        .D(data_out_cnt[1]),
        .Q(\data_out_cnt_reg_n_0_[1] ));
  FDCE \data_out_cnt_reg[2] 
       (.C(clk),
        .CE(\data_out_reg[16]_i_1_n_0 ),
        .CLR(\data_out_reg[16]_i_3_n_0 ),
        .D(data_out_cnt[2]),
        .Q(\data_out_cnt_reg_n_0_[2] ));
  FDCE \data_out_cnt_reg[3] 
       (.C(clk),
        .CE(\data_out_reg[16]_i_1_n_0 ),
        .CLR(\data_out_reg[16]_i_3_n_0 ),
        .D(data_out_cnt[3]),
        .Q(\data_out_cnt_reg_n_0_[3] ));
  FDCE \data_out_cnt_reg[4] 
       (.C(clk),
        .CE(\data_out_reg[16]_i_1_n_0 ),
        .CLR(\data_out_reg[16]_i_3_n_0 ),
        .D(data_out_cnt[4]),
        .Q(\data_out_cnt_reg_n_0_[4] ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_out_reg[0]_i_1 
       (.I0(spi_data_out[0]),
        .I1(state__0[0]),
        .O(data_out_reg[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \data_out_reg[10]_i_1 
       (.I0(spi_data_out[10]),
        .I1(state__0[0]),
        .I2(\data_out_reg_reg_n_0_[9] ),
        .O(data_out_reg[10]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \data_out_reg[11]_i_1 
       (.I0(spi_data_out[11]),
        .I1(state__0[0]),
        .I2(\data_out_reg_reg_n_0_[10] ),
        .O(data_out_reg[11]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \data_out_reg[12]_i_1 
       (.I0(spi_data_out[12]),
        .I1(state__0[0]),
        .I2(\data_out_reg_reg_n_0_[11] ),
        .O(data_out_reg[12]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \data_out_reg[13]_i_1 
       (.I0(spi_data_out[13]),
        .I1(state__0[0]),
        .I2(\data_out_reg_reg_n_0_[12] ),
        .O(data_out_reg[13]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \data_out_reg[14]_i_1 
       (.I0(spi_data_out[14]),
        .I1(state__0[0]),
        .I2(\data_out_reg_reg_n_0_[13] ),
        .O(data_out_reg[14]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \data_out_reg[15]_i_1 
       (.I0(spi_data_out[15]),
        .I1(state__0[0]),
        .I2(\data_out_reg_reg_n_0_[14] ),
        .O(data_out_reg[15]));
  LUT5 #(
    .INIT(32'h00045555)) 
    \data_out_reg[16]_i_1 
       (.I0(state__0[1]),
        .I1(clk_pulse__2),
        .I2(sck_int_reg_n_0),
        .I3(state0__4),
        .I4(state__0[0]),
        .O(\data_out_reg[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_out_reg[16]_i_2 
       (.I0(state__0[0]),
        .I1(\data_out_reg_reg_n_0_[15] ),
        .O(data_out_reg[16]));
  LUT1 #(
    .INIT(2'h1)) 
    \data_out_reg[16]_i_3 
       (.I0(spi_en),
        .O(\data_out_reg[16]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \data_out_reg[16]_i_4 
       (.I0(clk_cnt_reg[3]),
        .I1(clk_cnt_reg[1]),
        .I2(clk_cnt_reg[2]),
        .I3(clk_cnt_reg[0]),
        .O(clk_pulse__2));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \data_out_reg[16]_i_5 
       (.I0(\data_out_cnt_reg_n_0_[0] ),
        .I1(\data_out_cnt_reg_n_0_[3] ),
        .I2(\data_out_cnt_reg_n_0_[1] ),
        .I3(\data_out_cnt_reg_n_0_[2] ),
        .I4(\data_out_cnt_reg_n_0_[4] ),
        .I5(sck_int_reg_n_0),
        .O(state0__4));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \data_out_reg[1]_i_1 
       (.I0(spi_data_out[1]),
        .I1(state__0[0]),
        .I2(\data_out_reg_reg_n_0_[0] ),
        .O(data_out_reg[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \data_out_reg[2]_i_1 
       (.I0(spi_data_out[2]),
        .I1(state__0[0]),
        .I2(\data_out_reg_reg_n_0_[1] ),
        .O(data_out_reg[2]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \data_out_reg[3]_i_1 
       (.I0(spi_data_out[3]),
        .I1(state__0[0]),
        .I2(\data_out_reg_reg_n_0_[2] ),
        .O(data_out_reg[3]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \data_out_reg[4]_i_1 
       (.I0(spi_data_out[4]),
        .I1(state__0[0]),
        .I2(\data_out_reg_reg_n_0_[3] ),
        .O(data_out_reg[4]));
  LUT3 #(
    .INIT(8'hE2)) 
    \data_out_reg[5]_i_1 
       (.I0(spi_data_out[5]),
        .I1(state__0[0]),
        .I2(\data_out_reg_reg_n_0_[4] ),
        .O(data_out_reg[5]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \data_out_reg[6]_i_1 
       (.I0(spi_data_out[6]),
        .I1(state__0[0]),
        .I2(\data_out_reg_reg_n_0_[5] ),
        .O(data_out_reg[6]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \data_out_reg[7]_i_1 
       (.I0(spi_data_out[7]),
        .I1(state__0[0]),
        .I2(\data_out_reg_reg_n_0_[6] ),
        .O(data_out_reg[7]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \data_out_reg[8]_i_1 
       (.I0(spi_data_out[8]),
        .I1(state__0[0]),
        .I2(\data_out_reg_reg_n_0_[7] ),
        .O(data_out_reg[8]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hE2)) 
    \data_out_reg[9]_i_1 
       (.I0(spi_data_out[9]),
        .I1(state__0[0]),
        .I2(\data_out_reg_reg_n_0_[8] ),
        .O(data_out_reg[9]));
  FDCE \data_out_reg_reg[0] 
       (.C(clk),
        .CE(\data_out_reg[16]_i_1_n_0 ),
        .CLR(\data_out_reg[16]_i_3_n_0 ),
        .D(data_out_reg[0]),
        .Q(\data_out_reg_reg_n_0_[0] ));
  FDCE \data_out_reg_reg[10] 
       (.C(clk),
        .CE(\data_out_reg[16]_i_1_n_0 ),
        .CLR(\data_out_reg[16]_i_3_n_0 ),
        .D(data_out_reg[10]),
        .Q(\data_out_reg_reg_n_0_[10] ));
  FDCE \data_out_reg_reg[11] 
       (.C(clk),
        .CE(\data_out_reg[16]_i_1_n_0 ),
        .CLR(\data_out_reg[16]_i_3_n_0 ),
        .D(data_out_reg[11]),
        .Q(\data_out_reg_reg_n_0_[11] ));
  FDCE \data_out_reg_reg[12] 
       (.C(clk),
        .CE(\data_out_reg[16]_i_1_n_0 ),
        .CLR(\data_out_reg[16]_i_3_n_0 ),
        .D(data_out_reg[12]),
        .Q(\data_out_reg_reg_n_0_[12] ));
  FDCE \data_out_reg_reg[13] 
       (.C(clk),
        .CE(\data_out_reg[16]_i_1_n_0 ),
        .CLR(\data_out_reg[16]_i_3_n_0 ),
        .D(data_out_reg[13]),
        .Q(\data_out_reg_reg_n_0_[13] ));
  FDCE \data_out_reg_reg[14] 
       (.C(clk),
        .CE(\data_out_reg[16]_i_1_n_0 ),
        .CLR(\data_out_reg[16]_i_3_n_0 ),
        .D(data_out_reg[14]),
        .Q(\data_out_reg_reg_n_0_[14] ));
  FDCE \data_out_reg_reg[15] 
       (.C(clk),
        .CE(\data_out_reg[16]_i_1_n_0 ),
        .CLR(\data_out_reg[16]_i_3_n_0 ),
        .D(data_out_reg[15]),
        .Q(\data_out_reg_reg_n_0_[15] ));
  FDCE \data_out_reg_reg[16] 
       (.C(clk),
        .CE(\data_out_reg[16]_i_1_n_0 ),
        .CLR(\data_out_reg[16]_i_3_n_0 ),
        .D(data_out_reg[16]),
        .Q(SPI_MOSI));
  FDCE \data_out_reg_reg[1] 
       (.C(clk),
        .CE(\data_out_reg[16]_i_1_n_0 ),
        .CLR(\data_out_reg[16]_i_3_n_0 ),
        .D(data_out_reg[1]),
        .Q(\data_out_reg_reg_n_0_[1] ));
  FDCE \data_out_reg_reg[2] 
       (.C(clk),
        .CE(\data_out_reg[16]_i_1_n_0 ),
        .CLR(\data_out_reg[16]_i_3_n_0 ),
        .D(data_out_reg[2]),
        .Q(\data_out_reg_reg_n_0_[2] ));
  FDCE \data_out_reg_reg[3] 
       (.C(clk),
        .CE(\data_out_reg[16]_i_1_n_0 ),
        .CLR(\data_out_reg[16]_i_3_n_0 ),
        .D(data_out_reg[3]),
        .Q(\data_out_reg_reg_n_0_[3] ));
  FDCE \data_out_reg_reg[4] 
       (.C(clk),
        .CE(\data_out_reg[16]_i_1_n_0 ),
        .CLR(\data_out_reg[16]_i_3_n_0 ),
        .D(data_out_reg[4]),
        .Q(\data_out_reg_reg_n_0_[4] ));
  FDCE \data_out_reg_reg[5] 
       (.C(clk),
        .CE(\data_out_reg[16]_i_1_n_0 ),
        .CLR(\data_out_reg[16]_i_3_n_0 ),
        .D(data_out_reg[5]),
        .Q(\data_out_reg_reg_n_0_[5] ));
  FDCE \data_out_reg_reg[6] 
       (.C(clk),
        .CE(\data_out_reg[16]_i_1_n_0 ),
        .CLR(\data_out_reg[16]_i_3_n_0 ),
        .D(data_out_reg[6]),
        .Q(\data_out_reg_reg_n_0_[6] ));
  FDCE \data_out_reg_reg[7] 
       (.C(clk),
        .CE(\data_out_reg[16]_i_1_n_0 ),
        .CLR(\data_out_reg[16]_i_3_n_0 ),
        .D(data_out_reg[7]),
        .Q(\data_out_reg_reg_n_0_[7] ));
  FDCE \data_out_reg_reg[8] 
       (.C(clk),
        .CE(\data_out_reg[16]_i_1_n_0 ),
        .CLR(\data_out_reg[16]_i_3_n_0 ),
        .D(data_out_reg[8]),
        .Q(\data_out_reg_reg_n_0_[8] ));
  FDCE \data_out_reg_reg[9] 
       (.C(clk),
        .CE(\data_out_reg[16]_i_1_n_0 ),
        .CLR(\data_out_reg[16]_i_3_n_0 ),
        .D(data_out_reg[9]),
        .Q(\data_out_reg_reg_n_0_[9] ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFBF0040)) 
    sck_int_i_1
       (.I0(state0__4),
        .I1(clk_pulse__2),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .I4(sck_int_reg_n_0),
        .O(sck_int_i_1_n_0));
  FDCE sck_int_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(\data_out_reg[16]_i_3_n_0 ),
        .D(sck_int_i_1_n_0),
        .Q(sck_int_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    spi_done_INST_0
       (.I0(state__0[1]),
        .I1(state__0[0]),
        .O(spi_done));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
