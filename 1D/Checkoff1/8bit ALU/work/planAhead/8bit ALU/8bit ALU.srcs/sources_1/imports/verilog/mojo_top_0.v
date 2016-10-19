/*
   This file was generated automatically by the Mojo IDE version B1.3.3.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module mojo_top_0 (
    input clk,
    input rst_n,
    output reg [7:0] led,
    input cclk,
    output reg spi_miso,
    input spi_ss,
    input spi_mosi,
    input spi_sck,
    output reg [3:0] spi_channel,
    input avr_tx,
    output reg avr_rx,
    input avr_rx_busy,
    output reg [23:0] io_led,
    output reg [7:0] io_seg,
    output reg [3:0] io_sel,
    input [4:0] io_button,
    input [23:0] io_dip
  );
  
  
  
  reg rst;
  
  wire [1-1:0] M_reset_cond_out;
  reg [1-1:0] M_reset_cond_in;
  reset_conditioner_1 reset_cond (
    .clk(clk),
    .in(M_reset_cond_in),
    .out(M_reset_cond_out)
  );
  
  wire [8-1:0] M_add_op;
  wire [1-1:0] M_add_z;
  wire [1-1:0] M_add_v;
  wire [1-1:0] M_add_n;
  reg [8-1:0] M_add_a;
  reg [8-1:0] M_add_b;
  reg [1-1:0] M_add_alufn0;
  adder_2 add (
    .a(M_add_a),
    .b(M_add_b),
    .alufn0(M_add_alufn0),
    .op(M_add_op),
    .z(M_add_z),
    .v(M_add_v),
    .n(M_add_n)
  );
  
  wire [8-1:0] M_cmp_op;
  reg [1-1:0] M_cmp_z;
  reg [1-1:0] M_cmp_v;
  reg [1-1:0] M_cmp_n;
  reg [1-1:0] M_cmp_alufn1;
  reg [1-1:0] M_cmp_alufn2;
  comparer_3 cmp (
    .z(M_cmp_z),
    .v(M_cmp_v),
    .n(M_cmp_n),
    .alufn1(M_cmp_alufn1),
    .alufn2(M_cmp_alufn2),
    .op(M_cmp_op)
  );
  
  wire [8-1:0] M_shift_op;
  reg [8-1:0] M_shift_a;
  reg [8-1:0] M_shift_b;
  reg [2-1:0] M_shift_alufn;
  shifter_4 shift (
    .a(M_shift_a),
    .b(M_shift_b),
    .alufn(M_shift_alufn),
    .op(M_shift_op)
  );
  
  wire [8-1:0] M_boole_op;
  reg [8-1:0] M_boole_a;
  reg [8-1:0] M_boole_b;
  reg [4-1:0] M_boole_alufn;
  boolean_5 boole (
    .a(M_boole_a),
    .b(M_boole_b),
    .alufn(M_boole_alufn),
    .op(M_boole_op)
  );
  
  always @* begin
    M_reset_cond_in = ~rst_n;
    rst = M_reset_cond_out;
    led = 8'h00;
    spi_miso = 1'bz;
    spi_channel = 4'bzzzz;
    avr_rx = 1'bz;
    io_led = 24'h000000;
    io_seg = 8'hff;
    io_sel = 4'hf;
    M_add_a = io_dip[8+7-:8];
    M_add_b = io_dip[0+7-:8];
    M_add_alufn0 = io_dip[16+0+0-:1];
    M_cmp_z = M_add_z;
    M_cmp_v = M_add_v;
    M_cmp_n = M_add_n;
    M_cmp_alufn1 = io_dip[16+1+0-:1];
    M_cmp_alufn2 = io_dip[16+2+0-:1];
    M_shift_a = io_dip[8+7-:8];
    M_shift_b = io_dip[0+7-:8];
    M_shift_alufn = io_dip[16+0+1-:2];
    M_boole_a = io_dip[8+7-:8];
    M_boole_b = io_dip[0+7-:8];
    M_boole_alufn = io_dip[16+0+3-:4];
    
    case (io_dip[16+4+1-:2])
      2'h0: begin
        io_led[0+7-:8] = M_add_op;
      end
      2'h1: begin
        io_led[0+7-:8] = M_boole_op;
      end
      2'h2: begin
        io_led[0+7-:8] = M_shift_op;
      end
      2'h3: begin
        io_led[0+7-:8] = M_cmp_op;
      end
    endcase
  end
endmodule
