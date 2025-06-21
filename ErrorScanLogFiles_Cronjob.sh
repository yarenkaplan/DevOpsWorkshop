#!/bin/bash

# Output file
output_file="error_results_from_cronjob.txt"

# Clear previous output file
> "$output_file"

# Find all .log files
find ~/ -type f -name "*.log" 2>/dev/null | while read -r logfile; do
   
    # Scan the file to find ERROR containing lines       
    grep -H "ERROR" "$logfile" >> "$output_file" 2>/dev/null
done
