/*
   This file was generated automatically by the Mojo IDE version B1.3.4.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module shifter_4 (
    input [7:0] a,
    input [7:0] b,
    input [1:0] alufn,
    output reg [7:0] op
  );
  
  
  
  always @* begin
    op = 8'h00;
    
    case (alufn)
      2'h0: begin
        op = a << b;
      end
      2'h1: begin
        op = a >> b;
      end
      2'h3: begin
        op = $signed(a) >>> b;
      end
    endcase
  end
endmodule
