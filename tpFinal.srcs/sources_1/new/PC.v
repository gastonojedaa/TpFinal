`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.10.2023 17:25:27
// Design Name: 
// Module Name: PC
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module PC
#(
    parameter NB_PC = 32 
)
(
    input   i_clk,
    input   i_reset,
    input   [NB_PC-1:0] i_new_address,    
    output  [NB_PC-1:0] o_address   
);

reg [NB_PC-1:0] address;

always@(posedge i_clk)
begin
    if(i_reset)
        address <= 0;
    else
        address <= i_new_address;
end

assign o_address = address;

endmodule
