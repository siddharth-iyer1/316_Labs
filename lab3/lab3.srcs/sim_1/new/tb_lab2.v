`timescale 1ns / 1ps
 
module MUXtb;
 
//Inputs
    reg S0;
    reg S1;
    reg I0;
    reg I1;
    reg I2;
    reg I3;
    
//Outputs, defined as wires
wire D;
 
MUX uut(
    .S0(S0),
    .S1(S1),
    .I0(I0),
    .I1(I1),
    .I2(I2),
    .I3(I3),
    .D(D)
);
 
initial begin
    S0 = 0;
    S1 = 0;
    I0 = 0;
    I1 = 0;
    I2 = 0;
    I3 = 0;
    #50
    
    S0 = 0;
    S1 = 0;
    I0 = 1;
    I1 = 0;
    I2 = 0;
    I3 = 0;
    $display("TC01");
    if(D != I0) $display("Result is wrong");
    #50
    
    S0 = 1;
    S1 = 0;
    I0 = 0;
    I1 = 1;
    I2 = 0;
    I3 = 0;
    $display("TC02");
    if(D != I1) $display("Result is wrong");
    #50
    
    S0 = 0;
    S1 = 1;
    I0 = 0;
    I1 = 0;
    I2 = 1;
    I3 = 0;
    $display("TC03");
    if(D != I2) $display("Result is wrong");
    #50
    
    S0 = 1;
    S1 = 1;
    I0 = 0;
    I1 = 0;
    I2 = 0;
    I3 = 1;
    $display("TC04");
    if(D != I3) $display("Result is wrong");
    #50
    
    S0 = 0;
    S1 = 0;
    I0 = 0;
    I1 = 0;
    I2 = 0;
    I3 = 0;
    $display("TC05");
    if(D != I0) $display("Result is wrong");
    #50
    
    S0 = 1;
    S1 = 0;
    I0 = 0;
    I1 = 0;
    I2 = 0;
    I3 = 0;
    $display("TC06");
    if(D != I1) $display("Result is wrong");
    #50
    
    S0 = 0;
    S1 = 1;
    I0 = 0;
    I1 = 0;
    I2 = 0;
    I3 = 0;
    $display("TC07");
    if(D != I2) $display("Result is wrong");
    #50
    
    S0 = 1;
    S1 = 1;
    I0 = 0;
    I1 = 0;
    I2 = 0;
    I3 = 0;
    $display("TC08");
    if(D != I3) $display("Result is wrong");
    
end
endmodule