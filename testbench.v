`timescale 1 ns / 1 ps
module testbench;
reg clk;
always begin
    clk = 1'b0;
    #5;
    clk = 1'b1;
    #5;
  end
  reg [15:0] in1, in2, in3, in4, in5;
  always @(negedge clk)
  begin
    in1 <= 8'h2A;
    in2 <= 8'd9;
    in3 <= 8'd7;
    in4 <= 8'h6D;
    in5 <= 8'd5;
end
  initial
  begin
$display("If simulation ends before the testbench");
$display("completes, use the menu option to run all.");
#400; // allow it to run
$display("Simulation is over, check the waveforms."); $stop;
end
  wire [15:0] out1, out2, out3, out4, out5;
  sort my_sort (
    .in1(in1),
    .in2(in2),
    .in3(in3),
    .in4(in4),
    .in5(in5),
    .out1(out1),
    .out2(out2),
    .out3(out3),
    .out4(out4),
    .out5(out5),
    .clk(clk)
    );
    endmodule