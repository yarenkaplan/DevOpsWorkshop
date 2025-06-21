# DevOpsWorkshop
This repository contains Bash scripts developed for DevOps automation tasks.

# Log Error Scanner Script
The current focus is on scanning `.log` files for `ERROR` entries and writing the results to a designated output file.

Error Scanner Scripts:
- Recursively scans all `.log` files in the home directory
- Searches for lines containing the keyword `ERROR`
- Appends matching lines to a timestamped or predefined output file
- Can be run manually or automated with `cron`
