/*
   This file was generated automatically by the Mojo IDE version B1.3.5.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module seven_seg_4 (
    input clk,
    input rst,
    input [2:0] state,
    input [3:0] score,
    input [3:0] level,
    output reg [6:0] segs,
    output reg [3:0] segmentLED
  );
  
  
  
  reg [29:0] M_counter_d, M_counter_q = 1'h0;
  
  reg [1:0] n;
  
  reg [3:0] char;
  
  always @* begin
    M_counter_d = M_counter_q;
    
    n = M_counter_q[14+1-:2];
    M_counter_d = M_counter_q + 1'h1;
    segmentLED[0+3-:4] = 4'hf;
    segmentLED[(n)*1+0-:1] = 1'h0;
    if (state == 3'h4) begin
      
      case (n)
        1'h0: begin
          char = 4'hf;
        end
        1'h1: begin
          char = 4'hb;
        end
        2'h2: begin
          char = 4'hc;
        end
        2'h3: begin
          char = 4'hb;
        end
      endcase
    end else begin
      
      case (n)
        1'h0: begin
          char = 1'h0;
        end
        1'h1: begin
          char = 1'h0;
        end
        2'h2: begin
          char = 4'ha;
        end
        2'h3: begin
          char = level;
        end
        default: begin
          char = 1'h0;
        end
      endcase
    end
    
    case (char)
      1'h0: begin
        segs = 7'h3f;
      end
      1'h1: begin
        segs = 7'h06;
      end
      2'h2: begin
        segs = 7'h5b;
      end
      2'h3: begin
        segs = 7'h4f;
      end
      3'h4: begin
        segs = 7'h66;
      end
      3'h5: begin
        segs = 7'h6d;
      end
      3'h6: begin
        segs = 7'h7d;
      end
      3'h7: begin
        segs = 7'h07;
      end
      4'h8: begin
        segs = 7'h7f;
      end
      4'h9: begin
        segs = 7'h67;
      end
      4'ha: begin
        segs = 7'h38;
      end
      4'hb: begin
        segs = 7'h6e;
      end
      4'hc: begin
        segs = 7'h77;
      end
      4'hf: begin
        segs = 7'h00;
      end
      default: begin
        segs = 7'h7f;
      end
    endcase
  end
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
      M_counter_q <= 1'h0;
    end else begin
      M_counter_q <= M_counter_d;
    end
  end
  
endmodule
