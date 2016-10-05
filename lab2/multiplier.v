`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:10:32 10/04/2016 
// Design Name: 
// Module Name:    multiplier 
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
module multiplier(
input [7:0]A,
input [3:0]B,
output [7:0]C
    );
	wire m1,m2,m3,m4,m5,m6,m7,m8;
	wire cout1,cout2,cout3,cout4,cout5,cout6,cout7,cout8;
	reg [3:0]temp;

assign m1=B[0]&1;
bit8adder a0(A,temp,m1,temp,cout1);
assign C[0]=temp[0];
always@(*)
begin
temp=temp >> 1;
temp[3]=cout1;
end

assign m2=B[1]&1;
bit8adder a2(A,temp,m2,temp,cout2);
assign C[1]=temp[0];
always@(*)
begin
temp=temp >> 1;
temp[3]=cout2;
end

assign m3=B[2]&1;
bit8adder a3(A,temp,m3,temp,cout3);
assign C[2]=temp[0];
always@(*)
begin
temp=temp >> 1;
temp[3]=cout3;
end

assign m4=B[3]&1;
bit8adder a4(A,temp,m4,temp,cout4);
assign C[3]=temp[0];
always@(*)
begin
temp=temp >> 1;
temp[3]=cout4;
end

assign m5=B[4]&1;
bit8adder a5(A,temp,m5,temp,cout5);
assign C[4]=temp[0];
always@(*)
begin
temp=temp >> 1;
temp[3]=cout5;
end

assign m6=B[5]&1;
bit8adder a6(A,temp,m6,temp,cout6);
assign C[5]=temp[0];
always@(*)
begin
temp=temp >> 1;
temp[3]=cout6;
end

assign m7=B[6]&1;
bit8adder a7(A,temp,m7,temp,cout7);
assign C[6]=temp[0];
always@(*)
begin
temp=temp >> 1;
temp[3]=cout7;
end

assign m8=B[7]&1;
bit8adder a8(A,temp,m8,temp,cout8);
assign C[7]=temp[0];
always@(*)
begin
temp=temp >> 1;
temp[3]=cout8;
end
endmodule
