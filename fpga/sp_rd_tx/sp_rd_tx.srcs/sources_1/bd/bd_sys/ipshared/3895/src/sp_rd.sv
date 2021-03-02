// File:    sp_rd.sv
// Author:  Lei Kuang
// Date:    4th Feburary 2020
// @ Imperial College London

// Readout Interface for SuperMario

module sp_rd
(
    input  logic        clk,
    input  logic        nrst,
    
    input  logic        debug,
    input  logic        start,
    
    output logic [31:0] dout,
    output logic        dout_valid,

    // SuperMario Physical Port
    output logic        SP_CLK,
    output logic        SP_NRST,
    output logic [7:0]  SP_DIN,
    input  logic [7:0]  SP_DOUT,
    input  logic        SP_UPDATE,
    input  logic        SP_EOF,
    // - SPI Port
    output logic        SP_SPI_CS,
    input  logic        SP_SPI_MISO,
    output logic        SP_SPI_MOSI
);

// ----------------------------------------------------------------
// SPI Master
// ----------------------------------------------------------------

logic        spi_req;
logic [7:0]  spi_data_out;
logic [7:0]  spi_data_in;
logic        spi_done;
logic        spi_rdy;

spi spi_inst
(
    .nrst         (nrst),
    .clk          (clk),
    // User Interface
    .spi_req      (spi_req),
    .spi_data_out (spi_data_out),
    .spi_data_in  (spi_data_in),
    .spi_done     (spi_done),
    .spi_rdy      (spi_rdy),
    // SPI Physical Port
    .SPI_CS       (SP_SPI_CS),
    .SPI_MISO     (SP_SPI_MISO),
    .SPI_MOSI     (SP_SPI_MOSI)
);

// ----------------------------------------------------------------
// Delay Counter
// ----------------------------------------------------------------
logic [15:0] d_cnt;
logic        pulse_1ms; // 

always_ff @ (posedge clk, negedge nrst)
    if(~nrst)
        d_cnt <= '0;
    else
        d_cnt <= d_cnt + 16'd1;

assign pulse_1ms = d_cnt==16'd39_999;

// ----------------------------------------------------------------
// SPI Sequence
// ----------------------------------------------------------------

enum {s_idle, s_delay, s_rst, s_wait, s_cycle, s_update, s_readout} state;

always_ff @ (posedge clk, negedge nrst) begin
    if(~nrst)
        state <= s_idle;
    else
        case(state)
            s_idle:     if(spi_rdy)
                            state <= s_delay;
            s_delay:    if(pulse_1ms)               // SP_NRST = 1 for 1ms
                            state <= s_rst;
            s_rst:      if(spi_done)                // SuperMario IDLE Cmd
                            state <= s_wait;
            s_wait:     if(start)                   // Wait for start
                            state <= s_cycle;
            s_cycle:    if(spi_done)                // SuperMario Cycle Cmd
                            state <= s_update;
            s_update:   if(~SP_UPDATE)              // Wait until the update glag deasserts (bug)
                            state <= s_readout;
            s_readout:  state <=  s_readout;
        endcase
end
        
always_comb begin
    spi_req = '0;
    spi_data_out = '0;
    case(state)
        s_rst:      begin
                    spi_req = spi_rdy;
                    spi_data_out = 8'b111_0_0000;
                    end
        s_cycle:    begin
                    spi_req = spi_rdy;
                    spi_data_out = 8'b000_0_0000;
                    end
    endcase
end

// Chip Port Assignment
assign SP_CLK  = clk;
assign SP_NRST = state!=s_idle;
assign SP_DIN = '0;

// ----------------------------------------------------------------
// SuperMario Readout
// ----------------------------------------------------------------
logic [7:0] din;
logic [7:0] din_debug;
logic       din_valid;

assign din = SP_DOUT;
assign din_valid = SP_UPDATE & state==s_readout;

// Debug
always_ff @ (posedge clk, negedge nrst)
    if(~nrst)
        din_debug <= '0;
    else
        if(din_valid)
            din_debug <= din_debug + 8'd1;

// SIPO
always_ff @ (posedge clk, negedge nrst)
    if(~nrst)
        dout <= '0;
    else
        if(din_valid)
            dout <= {debug ? din_debug : din, dout[31:8]};
            
// Flag
logic [2:0] din_cnt; // 0...4

assign dout_valid = din_cnt[2];

always_ff @ (posedge clk, negedge nrst)
    if(~nrst)
        din_cnt <= '0;
    else
        if(din_valid)
            din_cnt <= dout_valid ? 3'd1 : din_cnt + 3'd1;
        else
            if(dout_valid)
                din_cnt <= '0;
                
// ----------------------------------------------------------------
// Column and Row Indication
// ----------------------------------------------------------------
logic [13:0] p_cnt;
logic [6:0]  p_col;
logic [6:0]  p_row;

always_ff @ (posedge clk, negedge nrst)
    if(~nrst)
        p_cnt <= '0;
    else
        if(din_valid)
            p_cnt <= p_cnt + 14'd1;
            
assign p_col = p_cnt[13:7];
assign p_row = p_cnt[6:0];

// ----------------------------------------------------------------
// Internal Logic Analyzer
// ----------------------------------------------------------------

ila_sp_rd i0
(
    .clk     (clk),
    
    .probe0  (SP_NRST),
    .probe1  (SP_SPI_CS),
    .probe2  (SP_SPI_MOSI),
    .probe3  (SP_SPI_MISO),
    .probe4  (SP_UPDATE),
    .probe5  (SP_EOF),

    .probe6  (din[7:0]),
    .probe7  (din_valid),
    .probe8  (dout[31:0]),
    .probe9  (dout_valid)
);

endmodule
