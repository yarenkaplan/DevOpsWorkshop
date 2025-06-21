#!/bin/bash

# Output file
OUTPUT_FILE="error_results.txt"

# Clear previous output file
> "$OUTPUT_FILE"

echo "ERROR scan starting, please wait..."
echo "Date: $(date)" >> "$OUTPUT_FILE"
echo "==========================" >> "$OUTPUT_FILE"

# Find all .log files
sudo find / -type f -name "*.log" 2>/dev/null | while read -r logfile; do
    echo "Scanning: $logfile"
    
    # Scan the file to find ERROR containing lines       
    if grep -iq "ERROR" "$logfile"; then
        echo "ERROR FOUND: $logfile"
        echo "File: $logfile" >> "$OUTPUT_FILE"
        grep -i "ERROR" "$logfile" >> "$OUTPUT_FILE"
        echo "--------------------------" >> "$OUTPUT_FILE"
    fi
done

echo "Scan completed. Results can be found in: $OUTPUT_FILE"
