#!/bin/bash

# Output file
OUTPUT="timing-results.txt"

# Clear previous results
echo "Timing results - $(date)" > "$OUTPUT"
echo "===========================" >> "$OUTPUT"

# Loop through all hash programs
for i in 00 01 02 03 04
do
    echo -e "\nRunning hash-$i..." >> "$OUTPUT"
    /usr/bin/time -f "%e real\t%U user\t%S sys\t%M memory (KB)" ./hash-$i >> "$OUTPUT" 2>&1
done

echo -e "\n✅ All runs complete. Results saved to $OUTPUT."

