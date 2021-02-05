// File:    supermario_tb.sv
// Author:  Lei Kuang
// Date:    17th Janurary 2021
// @ Imperial College London

module supermario_tb;

logic       nrst;
logic       clk;
logic [7:0] din;
logic [7:0] dout;
logic       update;
logic       eof;

logic        spi_req;
logic [7:0]  spi_data_out;
logic [7:0]  spi_data_in;
logic        spi_done;
logic        spi_rdy;

logic        SPI_CS;
logic        SPI_MISO;
logic        SPI_MOSI;

// ----------------------------------------------------------------
// Instantiation
// ----------------------------------------------------------------
supermario dut
(
    .nrst    (nrst),
    .clk     (clk),

    .spi_cs  (SPI_CS),
    .spi_sdi (SPI_MOSI),
    .spi_sdo (SPI_MISO),

    .din     (din),
    .dout    (dout),
    .update  (update),
    .eof     (eof)
);

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
    .SPI_CS       (SPI_CS),
    .SPI_MISO     (SPI_MISO),
    .SPI_MOSI     (SPI_MOSI)
);

assign din = '0;

// ----------------------------------------------------------------
// Clock & Reset
// ----------------------------------------------------------------
initial begin
    clk = '0;
    forever #5ns clk = ~clk;
end

initial begin
    nrst = '0;
    
    @(posedge clk)
    nrst <= '1;
end

// ----------------------------------------------------------------
// SPI Sequence
// ----------------------------------------------------------------
enum {s_idle, s_rst, s_wait, s_cycle, s_end} state;

logic [7:0] cnt;

always_ff @ (posedge clk, negedge nrst) begin
    if(~nrst)
        cnt <= '0;
    else
        if(state==s_wait)
            cnt <= cnt + 8'd1;
end

always_ff @ (posedge clk, negedge nrst) begin
    if(~nrst)
        state <= s_idle;
    else
        case(state)
            s_idle:     if(spi_rdy)
                            state <= s_rst;
            s_rst:      if(spi_done)
                            state <= s_cycle;
            s_wait:     if(cnt=='1)
                            state <= s_cycle;
            s_cycle:    if(spi_done)
                            state <= s_end;
            s_end:      state <=  s_end;
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

endmodule
