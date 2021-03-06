/*
   This file was generated automatically by Alchitry Labs version 1.2.1.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module full_adder_processor_6 (
    input a,
    input b,
    input ci,
    output reg s,
    output reg co
  );
  
  
  
  always @* begin
    s = a ^ b ^ ci;
    co = (a & b) + (a & ci) + (b & ci);
  end
endmodule
