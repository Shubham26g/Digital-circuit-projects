`timescale 1ns / 1ps

module logic_gates(
    input a,b,
    output y1,y2); //y1=nand o/p , y2= nor o/p
    
    assign y1= ~(a&b); //for nand gate
    assign y2=~(a|b); //for nor gate
endmodule
