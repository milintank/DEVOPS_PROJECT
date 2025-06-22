#!/bin/bash

# Title: Process Monitor
# Description: Displays active processes and the total count

echo "--------------------------------------------"
echo "        System Process Overview"
echo "--------------------------------------------"
ps aux

echo
echo "--------------------------------------------"
echo "        Total Running Processes"
echo "--------------------------------------------"
ps aux | wc -l

# Optional: Log results to a file (uncomment if needed)
# log_file="/var/log/process_monitor.log"
# {
#     echo "[$(date)] Process Snapshot:"
#     ps aux
#     echo "Total Processes: $(ps aux | wc -l)"
# } >> "$log_file"

# Optional: Filter specific processes by keyword (e.g., apache)
# echo "Filtering for keyword: apache"
# ps aux | grep apache | grep -v grep
