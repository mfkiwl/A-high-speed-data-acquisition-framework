`timescale 1ns/1ps

module trigger_unit_tb;

    // Parameters
    parameter WIDTH = 24;
    
    // Clock and reset
    reg clk;
    reg reset;
    
    // Inputs
    reg [15:0] adc;
    reg [WIDTH-1:0] sample_in;
    reg hardtrigger;
    
    // Output
    wire trig_condition;
    
    // Instantiate the Unit Under Test (UUT)
    trigger_unit #(
        .WIDTH(WIDTH)
    ) uut (
        .clk(clk),
        .adc(adc),
        .reset(reset),
        .sample_in(sample_in),
        .hardtrigger(hardtrigger),
        .trig_condition(trig_condition)
    );
    
    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk; // 100MHz clock
    end
    
    // Test sequence
    initial begin


         // Initialize VCD dump file
        $dumpfile("trigger_unit_waves.vcd");  // 指定波形文件名
        $dumpvars(0, trigger_unit_tb);       // 0表示dump所有层次的信号
        // Initialize inputs
        reset = 1;
        adc = 16'h0000;
        sample_in = 24'h000000;
        hardtrigger = 0;
        
        // Apply reset
        #20;
        reset = 0;
        #10;
        
        // Test 1: Immediate trigger mode
        $display("Test 1: Immediate trigger mode");
        sample_in = {8'd3, 16'h0000}; // MODE_IMM
        #40;
        if (trig_condition !== 1'b1) $display("Error: Immediate trigger failed");
        else $display("Immediate trigger passed");
        #10;
        
        // Test 2: GT (greater than) trigger mode
        $display("\nTest 2: GT trigger mode");
        sample_in = {8'd1, 16'h1000}; // MODE_GT with threshold = 0x1000
        #10;
        
        // Below threshold - no trigger
        adc = 16'h0FFF;
        #10;
        if (trig_condition !== 1'b0) $display("Error: GT trigger fired below threshold");
        
        // At threshold - no trigger (strictly greater than)
        adc = 16'h1000;
        #10;
        if (trig_condition !== 1'b0) $display("Error: GT trigger fired at threshold");
        
        // Above threshold - trigger
        adc = 16'h1001;
        #10;
        if (trig_condition !== 1'b1) $display("Error: GT trigger didn't fire above threshold");
        else $display("GT trigger passed");
        #10;
        
        // Test 3: LT (less than) trigger mode
        $display("\nTest 3: LT trigger mode");
        sample_in = {8'd2, 16'h1000}; // MODE_LT with threshold = 0x1000
        #10;
        
        // Above threshold - no trigger
        adc = 16'h1001;
        #10;
        if (trig_condition !== 1'b0) $display("Error: LT trigger fired above threshold");
        
        // At threshold - no trigger (strictly less than)
        adc = 16'h1000;
        #10;
        if (trig_condition !== 1'b0) $display("Error: LT trigger fired at threshold");
        
        // Below threshold - trigger
        adc = 16'h0FFF;
        #10;
        if (trig_condition !== 1'b1) $display("Error: LT trigger didn't fire below threshold");
        else $display("LT trigger passed");
        #10;
        
        // Test 4: Untriggered mode
        $display("\nTest 4: Untriggered mode");
        sample_in = {8'd0, 16'h0000}; // MODE_UNTRIG
        #10;
        adc = 16'hFFFF; // Extreme value that would trigger in other modes
        #10;
        if (trig_condition !== 1'b0) $display("Error: Trigger fired in untriggered mode");
        else $display("Untriggered mode passed");
        #10;
        
        // Test 5: Hard trigger mode
        $display("\nTest 5: Hard trigger mode");
        sample_in = {8'd4, 16'h0000}; // MODE_HARD
        #10;
        
        // Pulse hardtrigger input
        hardtrigger = 1;
        #10;
        hardtrigger = 0;
        #10;
        
        // Check for trigger pulse
        if (trig_condition !== 1'b1) $display("Error: Hard trigger didn't fire");
        else $display("Hard trigger passed");
        
        // Verify trigger is only one cycle
        #10;
        if (trig_condition !== 1'b0) $display("Error: Hard trigger pulse longer than one cycle");
        else $display("Hard trigger pulse duration correct");
        #10;
        
        // Test 6: Input synchronization
        $display("\nTest 6: Input synchronization");
        sample_in = {8'd1, 16'h1000}; // MODE_GT
        #5; // Half clock cycle
        
        // Change sample_in between clock edges
        sample_in = {8'd2, 16'h1000}; // MODE_LT
        #5;
        
        // Should still be in GT mode until input stabilizes
        adc = 16'h1001;
        #10;
        if (trig_condition !== 1'b1) $display("Error: Synchronization failed (GT mode)");
        
        // Now should be in LT mode
        adc = 16'h0FFF;
        #10;
        if (trig_condition !== 1'b1) $display("Error: Synchronization failed (LT mode)");
        else $display("Input synchronization passed");
        #10;
        
        // Test 7: Reset behavior
        $display("\nTest 7: Reset behavior");
        reset = 1;
        #10;
        if (trig_condition !== 1'b0) $display("Error: Reset failed to clear trigger");
        else $display("Reset passed");
        
        // End simulation
        #100;
        $display("\nAll tests completed");
        $finish;
    end
    
    // Monitor signals
    initial begin
        $monitor("Time = %t: adc = %h, sample_in = %h, hardtrigger = %b, trig_condition = %b",
                 $time, adc, sample_in, hardtrigger, trig_condition);
    end

endmodule