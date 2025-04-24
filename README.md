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
```
---

# ⚙️ Running the Project
## Prerequisites
- Cadence Genus & Innovus (for synthesis and layout)
- Verilog simulator (e.g., ModelSim, Vivado, Icarus)
- GPDK 45nm standard cell libraries

## Simulation
```
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
```

## 🚀 Key Features
- **Custom Instructions**: FFT_RUN and FFT_MEM allow accelerator triggering and memory interfacing.
- **Accelerators**:
    - Serial FFT (Radix-2 DIF)
    - Parallel FFT (16 MAC units, time-shared)
- **Register Bank**: 64x16-bit memory with dual I/O for complex FFT data
- **Pipeline Independence**: Accelerators execute independently of RS5 pipeline
- **Performance**: Parallel FFT achieves ≈2000× speedup with 5-cycle compute time

## 📊 Summary of Results

| Configuration         | Cycles  | Area (µm²) | Power (mW) | Speedup  |
|------------------------|---------|-------------|--------------|-----------|
| RS5 (SW FFT)           | 188,180 | 35,379      | 10.5         | 1×        |
| RS5 + Serial FFT       | 192     | 102,668     | 24.5*        | ~960×     |
| RS5 + Parallel FFT     | 99      | 185,796     | 20.7*        | ~1863×    |

> * Power values are based on physical synthesis results with clock gating enabled.

## 🛠️ Future Improvements
- **Unified Register Management**: Share register bank between processor and accelerators
- **Accelerator-to-Pipeline Integration**: Feed FFT results directly into pipeline for concurrent execution
- **Support for Larger FFT Sizes**: Expand to 64-point or 128-point FFT variants

## 🧑‍💻 Authors
**Bruno S. Zimmer** – bruno.zimmer@ufrgs.br

**Pedro T. L. Pereira** – ptlpereira@inf.ufrgs.br

**Raphael M. Brum** – brum@ufrgs.br

## 📄 License
This project is part of the CI-Inovador initiative and supported by MCTI and SOFTEX. It is intended for academic and research purposes.

