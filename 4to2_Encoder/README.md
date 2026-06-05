# 4-to-2 Encoder using Behavioral Modeling in Verilog HDL

A **4-to-2 Encoder** is a combinational circuit that converts one of four active input lines into a 2-bit binary code. It generates the binary representation corresponding to the active input. This design is implemented using **Behavioral Modeling** in Verilog.

## Files Included

- `encoder_4_2.v` → Verilog module for 4-to-2 Encoder
- `encoder_4_2_tb.v` → Testbench for simulation
- `Simulation_waveform.png` → Simulation output waveform

## Inputs and Outputs

### Inputs
- `d[3:0]` → Four input lines

### Outputs
- `y[1:0]` → Encoded binary output

## Truth Table

| d[3:0] | y[1:0] |
|---------|---------|
| 0001 | 00 |
| 0010 | 01 |
| 0100 | 10 |
| 1000 | 11 |

## Working

- When `d[0]` is high, the output is `00`.
- When `d[1]` is high, the output is `01`.
- When `d[2]` is high, the output is `10`.
- When `d[3]` is high, the output is `11`.
- The encoder converts the active input line into its equivalent binary code.

## Simulation Result

The simulation waveform confirms that the encoder correctly generates the binary code corresponding to the active input line.

## Author

**Sri Lakshmi Kaathyayani**  
*Final Year B.Tech ECE (VLSI)*<br>
*VIT-AP University*
