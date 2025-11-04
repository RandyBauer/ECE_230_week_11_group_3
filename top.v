`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/03/2025 09:51:15 PM
// Design Name: 
// Module Name: top
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


module top(
    input wire [15:0] sw,
    input wire btnC,
    output wire [15:0] led
    );
    
    wire q_d;
    wire nq_d;
    d_flip_flop u_dff(
        .clk (btnC),
        .d   (sw[0]),
        .q   (q_d),
        .notq(nq_d)
    );
    
    wire q_jk;
    wire nq_jk;
    jk_flip_flop u_jkff (
        .clk (btnC),
        .j   (sw[1]),
        .k   (sw[2]),
        .q   (q_jk),
        .notq(nq_jk)
    );
    
    wire q_t;
    wire nq_t;
    t_flip_flop u_tff (
        .clk (btnC),
        .t   (sw[3]),
        .q   (q_t),
        .notq(nq_t)
    );

    assign led[0] = q_d;
    assign led[1] = nq_d;
    assign led[2] = q_jk;
    assign led[3] = nq_jk;
    assign led[4] = q_t;
    assign led[5] = nq_t;
endmodule
