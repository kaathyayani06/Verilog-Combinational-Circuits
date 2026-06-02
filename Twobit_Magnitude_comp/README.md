# 2-Bit Comparator using Verilog HDL

A 2-Bit Comparator is a combinational circuit that compares two 2-bit binary inputs (**A** and **B**) and generates three outputs:

- **GT** = 1 when A > B
- **EQ** = 1 when A = B
- **LT** = 1 when A < B

## Working

The comparator checks the values of A and B and activates only one output at a time based on the comparison result.

### Example

| A  | B  | GT | EQ | LT |
|-----|-----|-----|-----|-----|
| 10 | 11 | 0 | 0 | 1 |
| 11 | 11 | 0 | 1 | 0 |
| 11 | 01 | 1 | 0 | 0 |

## Files Included

- `two_bit_comparator.v` – Design module
- `two_bit_comp_tb.v` – Testbench
- `schematic.png` – RTL/Design schematic
- `simulation_waveform.png` – Simulation output waveform
- `README.md` – Project documentation

## Applications

- ALUs
- Digital Processors
- Address Comparison
- Sorting Circuits
- Control Systems

## Tools Used

- Verilog HDL
- Xilinx Vivado

## Author

**Sri Lakshmi Kaathyayani Jonnalagadda**  
**Final Year B.Tech ECE (VLSI)**  
**VIT-AP University**
