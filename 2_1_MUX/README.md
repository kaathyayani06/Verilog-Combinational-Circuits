# 2:1 Multiplexer (MUX) using Behavioral Modeling in Verilog HDL

A **2:1 Multiplexer (MUX)** is a combinational circuit that selects one of two input signals and forwards the selected input to a single output based on the value of the select line (**S**). This design is implemented using **Behavioral Modeling** with a `case` statement in Verilog.

## Files Included

- `mux_2_1.v` → Verilog module for 2:1 Multiplexer
- `mux_2_1_tb.v` → Testbench for simulation
- `Schematic.png` → RTL/Schematic diagram
- `Simulation_waveform.png` → Simulation output waveform

## Inputs and Outputs

### Inputs
- `i[1:0]` → Two input lines
- `s` → Select line

### Output
- `y` → Multiplexer output

## Truth Table

| S | Y |
|---|---|
| 0 | i[0] |
| 1 | i[1] |

## Working

- If `s = 0`, output `y` follows `i[0]`.
- If `s = 1`, output `y` follows `i[1]`.
- The selection is performed using a `case` statement inside an `always @(*)` block.

## Simulation Result

The simulation waveform confirms that the output correctly follows the selected input for all test cases.

## Author

**Sri Lakshmi Kaathyayani**  
*Final Year B.Tech ECE (VLSI)*<br>
*VIT-AP University*
