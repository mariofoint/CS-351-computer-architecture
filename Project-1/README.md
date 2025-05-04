# Project 1 – Hash Function Performance Evaluation

## Summary
This project benchmarks five versions of a hash program (`hash-00` to `hash-04`) that each compute 1,000,000 hashes using different file input and memory allocation strategies. We compare their performance under default (`-g`) and optimized (`-O2`) compilation settings.

## Benchmark Results
https://docs.google.com/spreadsheets/d/1tNG9vrWuLn6D0Co16cfZzOTQR_sw3dt_qCETI8RTG7U/edit?usp=sharing 

## Analysis & Discussion
### What operation accounts for most of `hash-00`'s runtime?
The >> operation in hash-00 reads values from Data.txt one at a time in ASCII format. This results in very slow performance due to heavy I/O overhead and costly string parsing. Most of the runtime is spent reading and converting text to numbers, not on hashing itself. Even with -O2 optimization, the speed does not improve significantly because the bottleneck is in file I/O, which compiler optimizations can't eliminate.
### hash-01 and hash-02 both dynamically allocate memory for each hash computation. Is there much difference time-wise between their two allocation methods?
**A Bit.** Although the difference is much smaller with optimization, heap allocation in hash-01 is still a little slower than stack allocation in hash-02.
### Is there an appreciable speed difference with `hash-03`?
**No.** While `hash-03` avoids dynamic memory allocation by using a fixed-size stack array, its performance is very similar to `hash-02`, which uses `alloca()`.  
### Why is `hash-04`'s memory usage so much larger?
Beacause of mmap the operating system loads the entire file into memor, and because it's mapped rather than read in parts the memory usage is high.
### What other compiler options did you try, and did they help at all?
Nothing yet plan to try -O3 -funroll-loops and -march=native
