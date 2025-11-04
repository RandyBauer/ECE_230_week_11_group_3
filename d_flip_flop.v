`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/03/2025 09:45:19 PM
// Design Name: 
// Module Name: d_flip_flop
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


module d_flip_flop(
    input wire clk,
    input wire d,
    output reg q,
    output wire notq
    );
    
    initial q = 1'b0;
    
    always @(posedge clk) begin
        q <= d;
        end
        
    assign notq = ~q;
    
endmodule