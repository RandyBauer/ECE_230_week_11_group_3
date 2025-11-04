`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/03/2025 11:43:50 PM
// Design Name: 
// Module Name: t_flip_flop
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


module t_flip_flop(
    input wire clk,
    input wire t,
    output reg q,
    output wire notq
    );
    
    initial q = 1'b0;
    
    wire d = q ^ t;
    
    always @(posedge clk) begin
        q <= d;
        end
        
    assign notq = ~q;
    
endmodule
