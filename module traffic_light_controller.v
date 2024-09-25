module traffic_light_controller(
    input clk,
    input reset,
    output reg red_light,
    output reg yellow_light,
    output reg green_light
);

// State definitions
localparam RED = 0, YELLOW = 1, GREEN = 2;

// Timers
reg [7:0] red_timer, yellow_timer, green_timer;

// Current state
reg [1:0] state;

always @(posedge clk, posedge reset) begin
    if (reset) begin
        state <= RED;
        red_timer <= 0;
        yellow_timer <= 0;
        green_timer <= 0;
    end else begin
        case (state)
            RED: begin
                red_timer <= red_timer + 1;
                if (red_timer == 60) begin // Adjust timer values as needed
                    state <= YELLOW;
                    red_timer <= 0;
                end
            end
            YELLOW: begin
                yellow_timer <= yellow_timer + 1;
                if (yellow_timer == 10) begin
                    state <= GREEN;
                    yellow_timer <= 0;
                end
            end
            GREEN: begin
                green_timer <= green_timer + 1;
                if (green_timer == 40) begin
                    state <= YELLOW;
                    green_timer <= 0;
                end
            end
            default: state <= RED;
        endcase

        // Assign outputs based on state
        red_light <= (state == RED) ? 1 : 0;
        yellow_light <= (state == YELLOW) ? 1 : 0;
        green_light <= (state == GREEN) ? 1 : 0;
    end
end

endmodule