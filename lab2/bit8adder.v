`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:53:44 10/04/2016 
// Design Name: 
// Module Name:    bit8adder 
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
module bit8adder(
	 input  [7:0]a,
	 input  [7:0]b,
	 input m,
	 output  [7:0]sum,
    output cout
	 );
	 wire c1,c2,c3,c4,c5,c6,c7;
	 mgate_fa fa1(a[0],b[0],0,m,sum[0],c1),
	 fa2(a[1],b[1],c1,m,sum[1],c2),
	 fa3(a[2],b[2],c2,m,sum[2],c3),
	 fa4(a[3],b[3],c3,m,sum[3],c4),
	 fa5(a[4],b[4],c4,m,sum[4],c5),
	 fa6(a[5],b[5],c5,m,sum[5],c6),
	 fa7(a[6],b[6],c6,m,sum[6],c7),
	 fa8(a[7],b[7],c7,m,sum[7],cout);


endmodule
