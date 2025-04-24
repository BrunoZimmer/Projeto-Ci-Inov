# 🌀 FFT Acceleration on RS5 RISC-V Processor

This project integrates two 32-point FFT (Fast Fourier Transform) hardware accelerators into different versions of the RS5 RISC-V processor. We evaluate both serial and parallel I/O accelerator architectures compared to a baseline software implementation. The design includes RTL simulation, synthesis, and physical implementation using Cadence tools and GPDK 45nm technology.

## 📚 Project Summary

- **Target Processor:** RS5 (Custom RISC-V core with 4-stage pipeline)
- **Accelerators:** 32-point FFT – Serial and Parallel I/O versions
- **Design Scope:** Hardware-software co-design, custom instructions, full ASIC flow
- **Tools Used:** Verilog, Cadence Genus/Innovus, GPDK 45nm, GTKWave
- **Key Benefits:** Up to ~2000× speedup vs software FFT, power and area optimization

---

## 🌲 Project Directory Structure

```text
.
├── RS5-v0/             # Baseline RS5 core (no accelerator integration)
│   ├── app/            # Software for the Risc-v(C Language and Assembly)
│   ├── rtl/           
│   ├── sim/            # Testbench and vsim config files
│   ├── sim_xcelium/    # Xcelium config files
│   └── synthesis/      # Logical and Physical synthesis' scripts, constraints and results     
│
├── RS5-v1.2/         # RS5 with Serial FFT Accelerator integration
│   ├── app/            # Software for the Risc-v(C Language and Assembly)
│   ├── rtl/           
│   ├── sim/            # Testbench and vsim config files
│   ├── sim_xcelium/    # Xcelium config files
│   └── synthesis/      # Logical and Physical synthesis' scripts, constraints and results
│
├── RS5-v2.2/         # RS5 with Parallel FFT Accelerator integration
│   ├── app/            # Software for the Risc-v(C Language and Assembly)
│   ├── rtl/           
│   ├── sim/            # Testbench and vsim config files
│   ├── sim_xcelium/    # Xcelium config files
│   └── synthesis/      # Logical and Physical synthesis' scripts, constraints and results
│
├── RS5-v3.0/         # Optimized versions with clock gating + physical synthesis
│   ├── app/            # Software for the Risc-v(C Language and Assembly)
│   ├── rtl/           
│   ├── sim/            # Testbench and vsim config files
│   ├── sim_xcelium/    # Xcelium config files
│   └── synthesis/      # Logical and Physical synthesis' scripts, constraints and results
│
├── Makefile
└── README.md

---

# ⚙️ Running the Project
## Prerequisites
- Cadence Genus & Innovus (for synthesis and layout)
- Verilog simulator (e.g., ModelSim, Vivado, Icarus)
- GPDK 45nm standard cell libraries

## Simulation
# Example: simulate serial FFT on RS5-v1.2
#make software binary for Risc-V
cd RS5-v1.2/app/test
make

# Simulation on xcelium
cd RS5-v1.2/sim_xcelium
bash run_gui.sh

# Logical Synthesis
cd RS5-v1.2/synthesis
mkdir genus
cd genus
genus 
source ../scripts/genus_script.tcl

# Logical Synthesis
cd RS5-v1.2/synthesis
mkdir innovus
cd innovus
innovus 
source ../scripts/innovus_legacy_script.tcl
