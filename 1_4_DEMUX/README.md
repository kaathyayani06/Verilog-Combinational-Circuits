# 1:4 DEMUX using Behavioral Modeling in Verilog HDL

A **1:4 Demultiplexer (DEMUX)** is a combinational circuit that routes a single input signal to one of four output lines based on the value of the two-bit select line (**S**). This design is implemented using **Behavioral Modeling** with a `case` statement in Verilog.

## Files Included

- `demux_1_4.v` → Verilog module for 1:4 DEMUX
- `demux_1_4_tb.v` → Testbench for simulation
- `Simulation_waveform.png` → Simulation output waveform

## Inputs and Outputs

### Inputs
- `i` → Data input
- `s[1:0]` → Two-bit select line

### Outputs
- `y[3:0]` → DEMUX outputs

## Truth Table

| S | Active Output |
|----|----|
| 00 | y[0] = i |
| 01 | y[1] = i |
| 10 | y[2] = i |
| 11 | y[3] = i |

## Working

- If `s = 00`, the input `i` is routed to `y[0]`.
- If `s = 01`, the input `i` is routed to `y[1]`.
- If `s = 10`, the input `i` is routed to `y[2]`.
- If `s = 11`, the input `i` is routed to `y[3]`.
- Only one output carries the input signal at a time, while all other outputs remain low.
- The routing operation is implemented using a `case` statement inside an `always @(*)` block.

## Simulation Result

The simulation waveform confirms that the input signal is correctly routed to the selected output line for all possible select line combinations.

## Author

**Sri Lakshmi Kaathyayani Jonnalagadda**  
*Final Year B.Tech ECE (VLSI)*<br>
*VIT-AP University*
