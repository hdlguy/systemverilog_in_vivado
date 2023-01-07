//

package struct_test_pkg;

    typedef struct packed {
        logic[3:0][17:0]    peak;
        logic[31:0]         timestamp;
    } event_stat_struct;  // 4*18+32 = 104

endpackage
