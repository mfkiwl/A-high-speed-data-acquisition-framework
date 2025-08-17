module trigger_unit #(
    parameter integer WIDTH = 24 // Width of controlling signal
) (
    // Clock and input adc signal, reset
    input wire clk,
    input wire [15:0] adc,    
    input wire reset,

    // Sample input and hard trigger
    input wire [WIDTH-1:0] sample_in,
    input wire hardtrigger,

    // Trigger outputs
    output reg trig_condition // 1-cycle pulse at trigger event
);

localparam [7:0] MODE_IMM = 8'd3,
                 MODE_GT = 8'd1,
                 MODE_LT = 8'd2,
                 MODE_UNTRIG = 8'd0,
                 MODE_HARD = 8'd4;

// sync signal
reg [WIDTH-1:0] sync_reg1;
reg [WIDTH-1:0] sync_reg2;
reg [WIDTH-1:0] local_reg;

// hard trigger signal
reg sync_hardtrig1;
reg sync_hardtrig2;
reg sync_hardtrig3;

// switching
reg switching;

// sync the input signal to local clk
always @(posedge clk or posedge reset) begin
    if (reset) begin
        sync_reg1 <= {WIDTH{1'b0}};
        sync_reg2 <= {WIDTH{1'b0}};
        local_reg <= {WIDTH{1'b0}};
        sync_hardtrig1 <= 1'b0;
        sync_hardtrig2 <= 1'b0;
        sync_hardtrig3 <= 1'b0;
        switching <= 1'b0;
        trig_condition <= 1'b0;
    end else begin
        sync_reg1 <= sample_in;
        sync_reg2 <= sync_reg1;
        
        // sync for hard trig
        sync_hardtrig1 <= hardtrigger;
        sync_hardtrig2 <= sync_hardtrig1;
        sync_hardtrig3 <= sync_hardtrig2;
        
        // Detect rising edge of hardtrigger
        if (sync_hardtrig2 && !sync_hardtrig3) begin
            switching <= 1'b1;
        end else if (trig_condition) begin
            switching <= 1'b0; // Clear after trigger
        end
        
        // Only update local_reg when two consecutive samples are equal
        if (sync_reg1 == sync_reg2) begin
            local_reg <= sync_reg2;
        end
        
        // Default value
        trig_condition <= 1'b0;
        
        // Trigger condition logic
        case (local_reg[WIDTH-1:WIDTH-8]) // Assuming r_mode is your mode selection register
            MODE_IMM: begin
                // Immediate trigger (always true when armed)
                trig_condition <= 1'b1;
            end
            
            MODE_GT: begin
                // Trigger when adc > threshold
                if (adc > local_reg[15:0]) begin
                    trig_condition <= 1'b1;
                end
            end
            
            MODE_LT: begin
                // Trigger when adc < threshold
                if (adc < local_reg[15:0]) begin
                    trig_condition <= 1'b1;
                end
            end
            
            MODE_UNTRIG: begin
                // Never trigger (untriggered mode)
                trig_condition <= 1'b0;
            end
            
            MODE_HARD: begin
                // Trigger on hard trigger event
                trig_condition <= switching;
            end
            
            default: begin
                // Safety default
                trig_condition <= 1'b0;
            end
        endcase
    end
end

endmodule

