# 8:1 Multiplexer (MUX) using Behavioral Modeling in Verilog HDL

An **8:1 Multiplexer (MUX)** is a combinational circuit that selects one of eight input signals and forwards the selected input to a single output based on the value of the three-bit select line (**S**). This design is implemented using **Behavioral Modeling** with a `case` statement in Verilog.

## Files Included

- `mux_8_1.v` → Verilog module for 8:1 Multiplexer
- `mux_8_1_tb.v` → Testbench for simulation
- `Schematic.png` → RTL/Schematic diagram
- `Simulation_waveform.png` → Simulation output waveform

## Inputs and Outputs

### Inputs
- `i[7:0]` → Eight input lines
- `s[2:0]` → Three-bit select line

### Output
- `y` → Multiplexer output

## Truth Table

| S | Y |
|----|----|
| 000 | i[0] |
| 001 | i[1] |
| 010 | i[2] |
| 011 | i[3] |
| 100 | i[4] |
| 101 | i[5] |
| 110 | i[6] |
| 111 | i[7] |

## Working

- If `s = 000`, output `y` follows `i[0]`.
- If `s = 001`, output `y` follows `i[1]`.
- If `s = 010`, output `y` follows `i[2]`.
- If `s = 011`, output `y` follows `i[3]`.
- If `s = 100`, output `y` follows `i[4]`.
- If `s = 101`, output `y` follows `i[5]`.
- If `s = 110`, output `y` follows `i[6]`.
- If `s = 111`, output `y` follows `i[7]`.
- The selection is performed using a `case` statement inside an `always @(*)` block.

## Simulation Result

The simulation waveform confirms that the output correctly follows the selected input for all possible select line combinations.

## Author

**Sri Lakshmi Kaathyayani**  
*Final Year B.Tech ECE (VLSI)*
*VIT-AP University*
