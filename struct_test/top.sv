import struct_test_pkg::*;

module top (
    input   logic       clkin100,
    output  logic[3:0]  led
);

    logic clk;
    assign clk = clkin100;

    struct_test_pkg::event_stat_struct stat1=0, stat2=0;

    always_ff @(posedge clk) begin
    
        for (int i=0; i<4; i++) begin
            stat1.peak[i]   <= stat1.peak[i] + i;
            stat1.timestamp <= stat1.timestamp + 1;
        end

        stat2 <= stat1;

        led <= stat2.timestamp[27:24];
        
    end

    struct_test_ila ila_inst (.clk(clk), .probe0({stat1, stat2}));  // 208

endmodule

