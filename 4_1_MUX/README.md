# 4:1 Multiplexer (MUX) using Behavioral Modeling in Verilog HDL

A **4:1 Multiplexer (MUX)** is a combinational circuit that selects one of four input signals and forwards the selected input to a single output based on the value of the two-bit select line (**S**). This design is implemented using **Behavioral Modeling** with a `case` statement in Verilog.

## Files Included

- `mux_4_1.v` → Verilog module for 4:1 Multiplexer
- `mux_4_1_tb.v` → Testbench for simulation
- `Schematic.png` → RTL/Schematic diagram
- `Simulation_waveform.png` → Simulation output waveform

## Inputs and Outputs

### Inputs
- `i[3:0]` → Four input lines
- `s[1:0]` → Two-bit select line

### Output
- `y` → Multiplexer output

## Truth Table

| S | Y |
|----|----|
| 00 | i[0] |
| 01 | i[1] |
| 10 | i[2] |
| 11 | i[3] |

## Working

- If `s = 00`, output `y` follows `i[0]`.
- If `s = 01`, output `y` follows `i[1]`.
- If `s = 10`, output `y` follows `i[2]`.
- If `s = 11`, output `y` follows `i[3]`.
- The selection is performed using a `case` statement inside an `always @(*)` block.

## Simulation Result

The simulation waveform confirms that the output correctly follows the selected input based on the value of the select line.

## Author

**Sri Lakshmi Kaathyayani**  
*Final Year B.Tech ECE (VLSI)*<br>
*VIT-AP University*
