/*
   This file was generated automatically by the Mojo IDE version B1.3.4.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module tester_7 (
    input clk,
    input rst,
    output reg [7:0] alufn,
    output reg [7:0] a,
    output reg [7:0] b,
    output reg [7:0] exp
  );
  
  
  
  reg [29:0] M_counter_d, M_counter_q = 1'h0;
  
  reg [447:0] testcases;
  
  reg [3:0] n;
  
  always @* begin
    M_counter_d = M_counter_q;
    
    testcases[416+31-:32] = 32'h40040202;
    testcases[384+31-:32] = 32'h4205020a;
    testcases[352+31-:32] = 32'h001e3856;
    testcases[320+31-:32] = 32'h011e38e6;
    testcases[288+31-:32] = 32'h181e3818;
    testcases[256+31-:32] = 32'h1e1e383e;
    testcases[224+31-:32] = 32'h161e3826;
    testcases[192+31-:32] = 32'h1a1e381e;
    testcases[160+31-:32] = 32'h201e0278;
    testcases[128+31-:32] = 32'h219e014f;
    testcases[96+31-:32] = 32'h239e01cf;
    testcases[64+31-:32] = 32'h331e3800;
    testcases[32+31-:32] = 32'h351e3801;
    testcases[0+31-:32] = 32'h371e3801;
    n = M_counter_q[26+3-:4];
    M_counter_d = M_counter_q + 1'h1;
    alufn = testcases[(n)*32+24+7-:8];
    a = testcases[(n)*32+16+7-:8];
    b = testcases[(n)*32+8+7-:8];
    exp = testcases[(n)*32+0+7-:8];
  end
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
      M_counter_q <= 1'h0;
    end else begin
      M_counter_q <= M_counter_d;
    end
  end
  
endmodule
