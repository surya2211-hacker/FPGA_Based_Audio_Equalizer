🎵 FPGA-Based Audio Equalizer
📌 Overview

This project implements a digital audio equalizer on an FPGA using Verilog HDL. The design demonstrates ROM-based audio sample generation, digital FIR filtering, and real-time signal processing on the Nexys A7 (Artix-7) FPGA development board.

The project focuses on understanding DSP concepts on hardware, including filtering, fixed-point arithmetic, and synchronous design.

⚙️ Features

FPGA-based digital audio equalizer

ROM-based audio input samples

FIR low-pass filtering implementation

Fully synchronous Verilog design

Synthesized and implemented on Nexys A7 (Artix-7)

Visual output using on-board LEDs for debugging

🧠 Architecture

ROM Modules: Store pre-computed audio samples (100 Hz and 8 kHz)

Address Generator: Selects ROM samples using switches

FIR Filter: Performs digital filtering on audio samples

Top Module: Integrates ROM, filter, and control logic

🛠️ Tools & Technologies

HDL: Verilog

FPGA Board: Nexys A7 (Artix-7)

EDA Tool: Xilinx Vivado

DSP Design: MATLAB (filter coefficient generation & verification)

▶️ How to Run

Open Xilinx Vivado

Create a new RTL project and add all Verilog files

Add the Nexys A7 .xdc constraints file

Set top_module.v as the top module

Run Synthesis → Implementation → Generate Bitstream

Program the FPGA and control the input using on-board switches

📊 Verification

Functional verification performed using Verilog testbench

Filter behavior verified using MATLAB

Hardware validation using on-board LEDs

🚀 Future Improvements

Real-time audio input using ADC

Multi-band equalizer (bass, mid, treble)

DAC output via PMOD

AXI-Lite control interface

Audio visualization using VGA
