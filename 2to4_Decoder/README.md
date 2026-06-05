# 2-to-4 Decoder using Behavioral Modeling in Verilog HDL

A **2-to-4 Decoder** is a combinational circuit that converts a 2-bit binary input into one of four active output lines. For each input combination, only one output is asserted while all other outputs remain low. This design is implemented using **Behavioral Modeling** with `if-else` statements in Verilog.

## Files Included

- `decoder_2_4.v` → Verilog module for 2-to-4 Decoder
- `decoder_2_4_tb.v` → Testbench for simulation
- `Simulation_waveform.png` → Simulation output waveform

## Inputs and Outputs

### Inputs
- `d[1:0]` → 2-bit binary input

### Outputs
- `y[3:0]` → 4-bit decoded output

## Truth Table

| d[1:0] | y[3:0] |
|---------|---------|
| 00 | 0001 |
| 01 | 0010 |
| 10 | 0100 |
| 11 | 1000 |

## Working

- When `d = 00`, output `y` becomes `0001`.
- When `d = 01`, output `y` becomes `0010`.
- When `d = 10`, output `y` becomes `0100`.
- When `d = 11`, output `y` becomes `1000`.
- Only one output line is active for each input combination.
- The decoding operation is implemented using `if-else` statements inside an `always @(*)` block.

## Simulation Result

The simulation waveform confirms that the decoder activates the correct output line for each possible input combination.

## Author

**Sri Lakshmi Kaathyayani**  
*Final Year B.Tech ECE (VLSI)*<br>
*VIT-AP University*
