`timescale 1ns/1ps

import struct_test_pkg::*;

module struct_test_tb ();

    logic clk = 0; localparam clk_period = 10; always #(clk_period/2) clk = ~clk;

    struct_test_pkg::event_stat_struct stat1, stat2;
    
    logic reset;

    always_ff @(posedge clk) begin
    
        if (reset) begin
        
            stat1 <= 0;
            
        end else begin
        
            for (int i=0; i<4; i++) begin
                stat1.peak[i] <= stat1.peak[i] + i;
            end
            
            stat1.timestamp <= stat1.timestamp + 1;
            
            stat2 <= stat1;
            
        end
        
    end
    
    initial begin
        reset = 1;       
       #(clk_period*4);
        reset = 0;
    end


endmodule

