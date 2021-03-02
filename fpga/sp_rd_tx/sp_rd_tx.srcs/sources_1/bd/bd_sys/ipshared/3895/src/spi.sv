// File:    spi.sv
// Author:  Lei Kuang
// Date:    17th Janurary 2020
// @ Imperial College London

// SPI Master for SuperMario
// - 8-bit SPI
// - Update SPI_MOSI at failing edge
// - Read   SPI_MISO at failing edge

module spi
(
    input  logic        nrst,
    input  logic        clk,
    // User Interface
    input  logic        spi_req,
    input  logic [7:0]  spi_data_out,
    output logic [7:0]  spi_data_in,
    output logic        spi_done,
    output logic        spi_rdy,
    // SPI Physical Port
    output logic        SPI_CS,
    input  logic        SPI_MISO,
    output logic        SPI_MOSI
);

logic       rst_int;
logic [3:0] cnt;
logic [7:0] spi_data_out_reg;

assign rst_int = ~nrst;

// Main FSM
enum {rst, idle, busy, done} state;

always_ff @ (negedge clk, posedge rst_int) begin
    if(rst_int) begin
        state  <= rst;
        SPI_CS <= '1;
    end
    else
        case(state)
            rst:    state <= idle;
            idle:   if(spi_req) begin
                        state  <= busy;
                        SPI_CS <= '0;
                    end
            busy:   if(cnt=='0) begin
                        state <= done;
                        SPI_CS <= '1;
                    end
            done:   state <= idle;
        endcase
end

assign spi_rdy  = state == idle;
assign spi_done = state == done;

// SPI MOSI
always_ff @ (negedge clk, posedge rst_int) begin
    if(rst_int) begin
        cnt              <= '0;
        spi_data_out_reg <= '0;
    end
    else
        // Kick off the counter
        if(spi_req & cnt=='0) begin
            cnt              <= 4'd7;
            spi_data_out_reg <= spi_data_out;
        end
        else
            if(cnt!='0) begin
                cnt              <= cnt - 4'd1;
                spi_data_out_reg <= spi_data_out_reg << 1;
            end
end

assign SPI_MOSI = spi_data_out_reg[7];

// SPI MISO
always_ff @ (negedge clk, posedge rst_int) begin
    if(rst_int)
        spi_data_in <= '0;
    else
        if(~SPI_CS)
            spi_data_in <= {spi_data_in[6:0], SPI_MISO};
end

endmodule