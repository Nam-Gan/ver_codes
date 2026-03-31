module parking(
  input wire clk,
  input wire a,
  input wire b,
  input wire rst,
  output reg enter,
  output reg exit 
);
  localparam unoccupied = 2'b00, occupying = 2'b10, occupied = 2'b11, unoccupying = 2'b01;
  reg [1:0] curr_state, next_state;
  always @(posedge clk or posedge rst) begin
    if (rst)
      curr_state <= unoccupied; 
    else
      curr_state <= next_state;
  end 
  always @(*) begin
    next_state = curr_state;
    case(curr_state)
      2'b00: begin
        if(a)
          if(~b) begin
            next_state = occupying;
          end
      end
      2'b10: begin
        if(a)
          if(b)
            next_state = occupied;
      end
      2'b11: begin
        if(~a)
          if(b) begin
            next_state = unoccupying;
          end
      end
      2'b01: begin
        if(~a)
          if(~b)
            next_state = unoccupied;
      end
      default: next_state = unoccupied;
      endcase
  end
always @(posedge clk or posedge rst) begin
  if (rst) begin
    enter <= 0;
    exit  <= 0;
  end else begin
    enter <= (curr_state == unoccupied  && a && ~b);
    exit  <= (curr_state == occupied    && ~a && b);
  end
end

endmodule
