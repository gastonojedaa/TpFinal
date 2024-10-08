`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.05.2024 15:57:44
// Design Name: 
// Module Name: hazard_detection_unit
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


module hazard_detection_unit
#(
    parameter N_REG = 32,
    parameter NB_REG_ADDRESS = $clog2(N_REG)
)
( 
    //source registers from ID
    input [NB_REG_ADDRESS-1:0] i_rs_address_id,
    input [NB_REG_ADDRESS-1:0] i_rt_address_id,
    //EX memRead y rt
    input i_MemRead, 
    input [NB_REG_ADDRESS-1:0] i_rt_address_ex,
    //signals to stall
    output reg o_PCwrite,
    output reg o_IFIDwrite,
    output reg o_pipeline_stalled_to_ID
);

always@(*)
begin
    if(i_MemRead && ((i_rt_address_ex == i_rs_address_id) || (i_rt_address_ex == i_rt_address_id)))
        begin
            o_PCwrite = 1;
            o_IFIDwrite = 1;          
            o_pipeline_stalled_to_ID = 1'b1;
        end
    else
        begin
            o_PCwrite = 0;
            o_IFIDwrite = 0;
            o_pipeline_stalled_to_ID = 1'b0;
        end
end

endmodule
