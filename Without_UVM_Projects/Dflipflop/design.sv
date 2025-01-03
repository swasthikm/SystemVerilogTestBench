module dff (dff_if vif);
 
  // Always block triggered on the positive edge of the clock signal
  always @(posedge vif.clk)
    begin
      // Check if the reset signal is asserted
      if (vif.rst == 1'b1)
        // If reset is active, set the output to 0
        vif.dout <= 1'b0;
      else
        // If reset is not active, pass the input value to the output
        vif.dout <= vif.din;
    end
  
endmodule
 
// Define an interface "dff_if" with the following signals
interface dff_if;
  logic clk;   // Clock signal
  logic rst;   // Reset signal
  logic din;   // Data input
  logic dout;  // Data output
  
endinterface