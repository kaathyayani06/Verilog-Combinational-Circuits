# 1:2 DEMUX using Behavioral Modeling in Verilog HDL

A **1:2 Demultiplexer (DEMUX)** is a combinational circuit that routes a single input signal to one of two output lines based on the value of the select line (**S**). This design is implemented using **Behavioral Modeling** with a `case` statement in Verilog.

## Files Included

- `demux_1_2.v` → Verilog module for 1:2 DEMUX
- `demux_1_2_tb.v` → Testbench for simulation
- `Simulation_waveform.png` → Simulation output waveform

## Inputs and Outputs

### Inputs
- `i` → Data input
- `s` → Select line

### Outputs
- `y[1:0]` → DEMUX outputs

## Truth Table

| S | Y[1] | Y[0] |
|---|---|---|
| 0 | 0 | i |
| 1 | i | 0 |

## Working

- If `s = 0`, the input `i` is routed to `y[0]`.
- If `s = 1`, the input `i` is routed to `y[1]`.
- Only one output carries the input signal at a time, while the other output remains low.
- The routing operation is implemented using a `case` statement inside an `always @(*)` block.

## Simulation Result

The simulation waveform confirms that the input signal is correctly routed to the selected output line based on the value of the select signal.

## Author

**Sri Lakshmi Kaathyayani Jonnalagadda**  
*Final Year B.Tech ECE (VLSI)*<br>
*VIT-AP University*
