`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/08/15 02:24:24
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
    input wire [11:0] adc,
    output wire adc_clk,
    output wire tx,
    input wire rx
    );
  wire [3:0]  dummy_bits;
 assign dummy_bits=4'h0;
 
 //instantiate the ps core
   System_wrapper zynq_u(
   .din_0({dummy_bits,adc}),
   .adc_clk(adc_clk),
   .UART_0_0_rxd(rx),
    .UART_0_0_txd(tx)
   
 );
 
 
    
    
    
endmodule
