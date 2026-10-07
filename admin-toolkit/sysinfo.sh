#!/bin/bash
# Print the report header
echo "=== System Info Report ==="
echo ""
# Show who is running the script
echo "Current User: $(whoami)"
# Show today's date and time
echo "Date: $(date)"
echo ""
# Count all installed packages
echo "Installed Packages: $(apt list --installed 2>/dev/null | wc -l)"
echo ""
# List the top 10 processes sorted by CPU usage
echo "=== Top 10 Processes by CPU ==="
ps aux --sort=-%cpu | head -11
echo ""
echo "=== Report Complete ==="
