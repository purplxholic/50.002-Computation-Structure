/*
   This file was generated automatically by the Mojo IDE version B1.3.5.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module ext_io_2 (
    input clk,
    input rst,
    input [5:0] movebtn,
    input start,
    output reg [5:0] movebtn_pressed,
    output reg startpressed
  );
  
  
  
  wire [1-1:0] M_start_cond_out;
  reg [1-1:0] M_start_cond_in;
  button_conditioner_4 start_cond (
    .clk(clk),
    .in(M_start_cond_in),
    .out(M_start_cond_out)
  );
  wire [1-1:0] M_start_edge_out;
  reg [1-1:0] M_start_edge_in;
  edge_detector_5 start_edge (
    .clk(clk),
    .in(M_start_edge_in),
    .out(M_start_edge_out)
  );
  wire [1-1:0] M_up_cond_out;
  reg [1-1:0] M_up_cond_in;
  button_conditioner_4 up_cond (
    .clk(clk),
    .in(M_up_cond_in),
    .out(M_up_cond_out)
  );
  wire [1-1:0] M_up_edge_out;
  reg [1-1:0] M_up_edge_in;
  edge_detector_5 up_edge (
    .clk(clk),
    .in(M_up_edge_in),
    .out(M_up_edge_out)
  );
  wire [1-1:0] M_down_cond_out;
  reg [1-1:0] M_down_cond_in;
  button_conditioner_4 down_cond (
    .clk(clk),
    .in(M_down_cond_in),
    .out(M_down_cond_out)
  );
  wire [1-1:0] M_down_edge_out;
  reg [1-1:0] M_down_edge_in;
  edge_detector_5 down_edge (
    .clk(clk),
    .in(M_down_edge_in),
    .out(M_down_edge_out)
  );
  wire [1-1:0] M_left_cond_out;
  reg [1-1:0] M_left_cond_in;
  button_conditioner_4 left_cond (
    .clk(clk),
    .in(M_left_cond_in),
    .out(M_left_cond_out)
  );
  wire [1-1:0] M_left_edge_out;
  reg [1-1:0] M_left_edge_in;
  edge_detector_5 left_edge (
    .clk(clk),
    .in(M_left_edge_in),
    .out(M_left_edge_out)
  );
  wire [1-1:0] M_right_cond_out;
  reg [1-1:0] M_right_cond_in;
  button_conditioner_4 right_cond (
    .clk(clk),
    .in(M_right_cond_in),
    .out(M_right_cond_out)
  );
  wire [1-1:0] M_right_edge_out;
  reg [1-1:0] M_right_edge_in;
  edge_detector_5 right_edge (
    .clk(clk),
    .in(M_right_edge_in),
    .out(M_right_edge_out)
  );
  wire [1-1:0] M_fw_cond_out;
  reg [1-1:0] M_fw_cond_in;
  button_conditioner_4 fw_cond (
    .clk(clk),
    .in(M_fw_cond_in),
    .out(M_fw_cond_out)
  );
  wire [1-1:0] M_fw_edge_out;
  reg [1-1:0] M_fw_edge_in;
  edge_detector_5 fw_edge (
    .clk(clk),
    .in(M_fw_edge_in),
    .out(M_fw_edge_out)
  );
  wire [1-1:0] M_bw_cond_out;
  reg [1-1:0] M_bw_cond_in;
  button_conditioner_4 bw_cond (
    .clk(clk),
    .in(M_bw_cond_in),
    .out(M_bw_cond_out)
  );
  wire [1-1:0] M_bw_edge_out;
  reg [1-1:0] M_bw_edge_in;
  edge_detector_5 bw_edge (
    .clk(clk),
    .in(M_bw_edge_in),
    .out(M_bw_edge_out)
  );
  
  always @* begin
    M_start_cond_in = start;
    M_start_edge_in = M_start_cond_out;
    M_up_cond_in = movebtn[0+0-:1];
    M_up_edge_in = M_up_cond_out;
    M_down_cond_in = movebtn[1+0-:1];
    M_down_edge_in = M_down_cond_out;
    M_left_cond_in = movebtn[2+0-:1];
    M_left_edge_in = M_left_cond_out;
    M_right_cond_in = movebtn[3+0-:1];
    M_right_edge_in = M_right_cond_out;
    M_fw_cond_in = movebtn[4+0-:1];
    M_fw_edge_in = M_fw_cond_out;
    M_bw_cond_in = movebtn[5+0-:1];
    M_bw_edge_in = M_bw_cond_out;
    startpressed = M_start_edge_out;
    movebtn_pressed[0+0-:1] = M_up_edge_out;
    movebtn_pressed[1+0-:1] = M_down_edge_out;
    movebtn_pressed[2+0-:1] = M_left_edge_out;
    movebtn_pressed[3+0-:1] = M_right_edge_out;
    movebtn_pressed[4+0-:1] = M_fw_edge_out;
    movebtn_pressed[5+0-:1] = M_bw_edge_out;
  end
endmodule
