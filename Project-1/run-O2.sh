#!/bin/bash

# Output file
OUTPUT="timing-O2.txt"

# Step 1: Clean old builds
echo "🧹 Cleaning previous executables..."
make rmtargets

# Step 2: Rebuild with -O2 optimization
echo "🛠️ Rebuilding with -O2 optimization..."
make OPT="-O2"

# Step 3: Initialize results file
echo "Timing results with -O2 optimization - $(date)" > "$OUTPUT"
echo "=====================================================" >> "$OUTPUT"

# Step 4: Time each program
for i in 00 01 02 03 04
do
    echo -e "\n🔍 Running hash-$i with -O2..." >> "$OUTPUT"
    
    if [[ -x ./hash-$i ]]; then
        /usr/bin/time -f "%e real\t%U user\t%S sys\t%M memory (KB)" ./hash-$i >> "$OUTPUT" 2>&1
    else
        echo "❌ hash-$i not found or not executable" >> "$OUTPUT"
    fi
done

echo -e "\n✅ Optimized runs complete. Results saved to $OUTPUT."

