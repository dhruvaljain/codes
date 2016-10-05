`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:04:33 10/04/2016 
// Design Name: 
// Module Name:    test 
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
module test(
    );
reg [7:0]a;
reg [3:0]b;
wire [11:0]c;
multiplier mu(a,b,c);
initial 
begin
a=10101010;
b=0001;
#20;
a=10010010;
b=0010;
#20;
end

endmodule
