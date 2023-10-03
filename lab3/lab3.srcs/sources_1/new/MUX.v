`timescale 1ns / 1ps
 
module MUX(
    input S0,
    input S1,
    input I0,
    input I1,
    input I2,
    input I3,
    output D
    );
   
// Behavioral Modeling
//   reg d_buf = 1'b0;
//   assign D = d_buf;
   
//   always@(*)
//    begin
//        d_buf = 1'bx;
//        case({S1,S0})
//        2'b00: d_buf = I0;
//        2'b01: d_buf = I1;
//        2'b10: d_buf = I2;
//        2'b11: d_buf = I3;
//        endcase
//    end
    
 // Structural Modeling
    wire S1_not, S0_not;
    not n0(S0_not, S0);
    not n1(S1_not, S1);
    
    wire I0_out, I1_out, I2_out, I3_out;
    and g0(I0_out, I0, S1_not, S0_not);
    and g1(I1_out, I1, S1_not, S0);
    and g2(I2_out, I2, S1, S0_not);
    and g3(I3_out, I3, S1, S0);
    
    or f0(I0_out, I1_out, I2_out, I3_out);
endmodule