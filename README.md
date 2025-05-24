# CS-351: Computer Architecture Projects  
**Sonoma State University, Spring 2025**  
**Instructor**: Dave Shreiner  
**Student**: Mario Lucido

---
**CS-351: Computer Architecture Projects** – Benchmarked low-level C++ programs for memory and I/O efficiency, scaled hash functions across CPU threads using Amdahl’s Law, and implemented GPU acceleration using CUDA. Created procedural WebGL shaders and conducted end-to-end performance analysis of CPU vs GPU workloads.

## Overview

This repository contains all major programming projects completed for **CS-351: Computer Architecture**, a systems-focused course exploring low-level performance, parallelism, and GPU computing. Each project is self-contained in its own folder and includes benchmarks, analysis, and source code.

These projects emphasize real-world systems engineering skills, including:

- Benchmarking and profiling C/C++ code
- Optimizing memory usage and I/O access
- Applying Amdahl’s Law to multi-threaded scaling
- Writing GPU-accelerated code using CUDA
- Procedural graphics with WebGL + shaders

---

## Technologies Used

- **C++** — Low-level systems programming, benchmarking, memory management
- **OpenMP** — Parallel CPU threading, applied Amdahl’s Law to multi-core performance
- **CUDA** — GPU programming using:
  - Custom CUDA kernels for parallel computation
  - `__global__` functions for GPU execution
  - Thread block configuration (`<<<grid, block>>>`)
  - Device vs host memory management (`cudaMalloc`, `cudaMemcpy`)
  - Profiling kernel performance using timers and analyzing speedups
- **Makefiles** — Automation of compilation and benchmarking
- **Shell Scripting** — Batch-run experiments and collect timing data
- **WebGL / GLSL** — Procedural GPU rendering with vertex and fragment shaders
- **Matplotlib & Google Sheets** — Graphing performance data and analyzing trends


- 
## Projects

### [Project 1: Hash Function Benchmarking](./Project-1/)
Evaluates five C++ hash programs (`hash-00.cpp` to `hash-04.cpp`) using different I/O and memory strategies.  
Benchmarks performance under default (`-g`) and optimized (`-O2`) compilation with detailed analysis.

- Compared stack vs heap allocation
- Used `mmap`, `ifstream`, and `scanf` variations
- Highlighted performance bottlenecks like I/O and parsing

 [Benchmark Spreadsheet](https://docs.google.com/spreadsheets/d/1tNG9vrWuLn6D0Co16cfZzOTQR_sw3dt_qCETI8RTG7U/edit?usp=sharing)

---

### [Project 2: Multithreaded Hashing & Amdahl’s Law](./Project-2/)
Parallelized the hashing computation across multiple threads to analyze scalability.  
Applied Amdahl’s Law to calculate theoretical speedup and graphed real results.

- Dynamic thread configuration (1–80 threads)
- Used `std::thread` and timing instrumentation
- Found diminishing returns due to synchronization and memory contention

Speedup graph + full analysis included.

---

### [Project 3: Procedural WebGL Geometry](./Project-3/)
Explored procedural graphics using **WebGL + GLSL shaders** to generate and animate shapes in the browser.

- Wireframe triangle, filled polygon, and rotating star
- HTML + JavaScript + shader files (GLSL)
- Demonstrates understanding of graphics pipelines and client GPU usage

---

### [Project 4: CUDA Programming & GPU Benchmarks](./Project-4/)
Implemented two CUDA programs:
1. A parallel version of `std::iota`
2. A Julia Set fractal renderer

- Benchmarked CPU vs GPU performance across large data sizes
- Learned about kernel launch overhead and memory transfer tradeoffs
- Generated fractal image output (PNG, PPM)


