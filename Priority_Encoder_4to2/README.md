# 4-to-2 Priority Encoder using Behavioral Modeling in Verilog HDL

A **4-to-2 Priority Encoder** is a combinational circuit that converts four input lines into a 2-bit binary code. If multiple inputs are active simultaneously, the encoder assigns priority to the highest-order input and generates the corresponding binary output. This design is implemented using **Behavioral Modeling** with a `casex` statement in Verilog.

## Files Included

- `priorityencoder_4to2.v` → Verilog module for 4-to-2 Priority Encoder
- `priority_encoder2to4_tb.v` → Testbench for simulation
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
| 001x | 01 |
| 01xx | 10 |
| 1xxx | 11 |

## Priority Order

**d[3] > d[2] > d[1] > d[0]**

The highest-priority active input determines the output code.

## Working

- If `d[3]` is high, the output is `11` regardless of other inputs.
- If `d[3]` is low and `d[2]` is high, the output is `10`.
- If `d[3]` and `d[2]` are low and `d[1]` is high, the output is `01`.
- If only `d[0]` is high, the output is `00`.
- The priority encoding operation is implemented using a `casex` statement inside an `always @(*)` block.

## Simulation Result

The simulation waveform confirms that the encoder correctly generates the binary code corresponding to the highest-priority active input.

## Author

**Sri Lakshmi Kaathyayani Jonnalagadda**  
*Final Year B.Tech ECE (VLSI)*<br>
*VIT-AP University*
