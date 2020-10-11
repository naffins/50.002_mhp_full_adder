/*
   This file was generated automatically by Alchitry Labs version 1.2.1.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module mantester_module_2 (
    input a,
    input b,
    input ci,
    input s,
    input co,
    output reg [1:0] expected_out,
    output reg s_correct,
    output reg co_correct
  );
  
  
  
  wire [1-1:0] M_fa_s;
  wire [1-1:0] M_fa_co;
  reg [1-1:0] M_fa_a;
  reg [1-1:0] M_fa_b;
  reg [1-1:0] M_fa_ci;
  full_adder_processor_6 fa (
    .a(M_fa_a),
    .b(M_fa_b),
    .ci(M_fa_ci),
    .s(M_fa_s),
    .co(M_fa_co)
  );
  
  always @* begin
    M_fa_a = a;
    M_fa_b = b;
    M_fa_ci = ci;
    expected_out[1+0-:1] = M_fa_s;
    expected_out[0+0-:1] = M_fa_co;
    s_correct = ~(s ^ M_fa_s);
    co_correct = ~(co ^ M_fa_co);
  end
endmodule
