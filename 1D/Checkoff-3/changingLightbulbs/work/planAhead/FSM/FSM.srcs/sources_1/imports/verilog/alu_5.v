/*
   This file was generated automatically by the Mojo IDE version B1.3.5.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module alu_5 (
    input [7:0] a,
    input [7:0] b,
    input [5:0] alufn,
    output reg [7:0] out
  );
  
  
  
  wire [8-1:0] M_add_op;
  wire [1-1:0] M_add_z;
  wire [1-1:0] M_add_v;
  wire [1-1:0] M_add_n;
  reg [8-1:0] M_add_a;
  reg [8-1:0] M_add_b;
  reg [1-1:0] M_add_alufn0;
  adder_22 add (
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
  comparer_23 cmp (
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
  shifter_24 shift (
    .a(M_shift_a),
    .b(M_shift_b),
    .alufn(M_shift_alufn),
    .op(M_shift_op)
  );
  
  wire [8-1:0] M_boole_op;
  reg [8-1:0] M_boole_a;
  reg [8-1:0] M_boole_b;
  reg [4-1:0] M_boole_alufn;
  boolean_25 boole (
    .a(M_boole_a),
    .b(M_boole_b),
    .alufn(M_boole_alufn),
    .op(M_boole_op)
  );
  
  always @* begin
    M_add_a = a;
    M_add_b = b;
    M_add_alufn0 = alufn[0+0-:1];
    M_cmp_z = M_add_z;
    M_cmp_v = M_add_v;
    M_cmp_n = M_add_n;
    M_cmp_alufn1 = alufn[1+0-:1];
    M_cmp_alufn2 = alufn[2+0-:1];
    M_shift_a = a;
    M_shift_b = b;
    M_shift_alufn = alufn[0+1-:2];
    M_boole_a = a;
    M_boole_b = b;
    M_boole_alufn = alufn[0+3-:4];
    out = 8'h00;
    
    case (alufn[4+1-:2])
      2'h0: begin
        out = M_add_op;
      end
      2'h1: begin
        out = M_boole_op;
      end
      2'h2: begin
        out = M_shift_op;
      end
      2'h3: begin
        out = M_cmp_op;
      end
    endcase
  end
endmodule
