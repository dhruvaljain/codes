`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:28:20 10/04/2016 
// Design Name: 
// Module Name:    mgate_fa 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module mgate_fa(
    input a,
    input b,
    input c,
    input m,
    output fsum,
    output fcarry
    );
	 wire B,s1,c1,c2;
	 assign B = b&m;
	 assign s1=a^B;
	 assign fsum=s1^c;
	 assign c1=a&B;
	 assign c2=s1&c;
	 assign fcarry=c1|c2;
endmodule
