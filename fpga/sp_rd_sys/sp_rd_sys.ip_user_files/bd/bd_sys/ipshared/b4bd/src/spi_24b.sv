// File:    spi_24b.sv
// Author:  Lei Kuang
// Date:    16th Feburary 2021
// @ Imperial College London

// SPI Master for DAC7562
// - https://www.ti.com/lit/ds/symlink/dac7562.pdf?ts=1613469615205&ref_url=https%253A%252F%252Fwww.ti.com%252Fstore%252Fti%252Fen%252Fp%252Fproduct%252F%253Fp%253DDAC7562SDGSR
// - 24-bit SPI
// - Update SPI_MOSI at raising edge

module spi_24b
(
    input  logic        clk, // 10MHz
    // User Interface
    input  logic        spi_en,
    input  logic [23:0] spi_data_out,
    output logic        spi_done,
    // SPI Physical Port
    output logic        SPI_SCK,
    output logic        SPI_CS,
    output logic        SPI_MOSI
);

// Clock divider
logic       clk_nrst;
logic [3:0] clk_cnt;
logic       clk_pulse;

always_ff @ (posedge clk, negedge clk_nrst)
    if(~clk_nrst)
        clk_cnt <= '0;
    else
        clk_cnt <= clk_pulse ? '0 : clk_cnt+4'd1;

assign clk_pulse = clk_cnt==4'd4;

// FSM
logic [24:0] data_out_reg;
logic [4:0]  data_out_cnt;
logic        sck_int;   

enum {idle, busy, done} state;

always_ff @ (posedge clk, negedge spi_en)
    if(~spi_en)  begin
        state <= idle;
        sck_int <= '0;
        data_out_reg <= '0;
        data_out_cnt <= '0;
    end
    else
        case(state)
            idle:   if(spi_en) begin
                        data_out_reg <= {1'b0, spi_data_out};
                        data_out_cnt <= '0;
                        state <= busy;
                    end
            busy:   if(clk_pulse) begin
                        if(data_out_cnt==5'd24 & sck_int=='0) 
                            state <= done;
                        else begin
                            sck_int <= ~sck_int;
                            if(~sck_int) begin
                                data_out_reg <= {data_out_reg[23:0], 1'b0};
                                data_out_cnt <= data_out_cnt + 5'd1;
                            end
                        end                     
                    end
            done:   state <= done;
        endcase

assign clk_nrst = state!=idle;
assign SPI_SCK  = sck_int;
assign SPI_CS   = state!=busy;
assign SPI_MOSI = data_out_reg[24];
assign spi_done = state==done;

/*ila_spi_24b ila_inst
(
    .clk    (clk),
    .probe0 (spi_en),
    .probe1 (spi_done),
    .probe2 (SPI_SCK),
    .probe3 (SPI_CS),
    .probe4 (SPI_MOSI)
);*/

endmodule