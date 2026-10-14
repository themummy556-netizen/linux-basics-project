#!/bin/bash
# System Reporter v2 - A smart system health report

REPORT_FILE="sysreport-$(date +%F).txt"

echo "=== System Report - $(date) ===" > "$REPORT_FILE"
echo "" >> "$REPORT_FILE"

# Uptime
echo "-- Uptime --" >> "$REPORT_FILE"
uptime >> "$REPORT_FILE"
echo "" >> "$REPORT_FILE"

# Memory
echo "-- Memory --" >> "$REPORT_FILE"
free -h >> "$REPORT_FILE"
echo "" >> "$REPORT_FILE"
# Disk check with warning
DISK_USAGE=$(df / | grep "/" | awk '{print $5}' | sed 's/%//')

echo "-- Disk Usage for / --" >> "$REPORT_FILE"
df -h / >> "$REPORT_FILE"

if [ "$DISK_USAGE" -gt 80 ]; then
    echo "WARNING: Disk usage is at ${DISK_USAGE}%!" >> "$REPORT_FILE"
else
    echo "Disk OK: Usage is at ${DISK_USAGE}%." >> "$REPORT_FILE"
fi
echo "" >> "$REPORT_FILE"
# Folder sizes
echo "-- Folder Sizes --" >> "$REPORT_FILE"

if [ $# -gt 0 ]; then
    FOLDER="$1"
    echo "Custom folder: $FOLDER" >> "$REPORT_FILE"
    du -sh "$FOLDER" >> "$REPORT_FILE"
else
    for DIR in ~/Documents ~/Downloads ~/Pictures; do
        if [ -d "$DIR" ]; then
            du -sh "$DIR" >> "$REPORT_FILE"
        else
            echo "$DIR does not exist, skipping." >> "$REPORT_FILE"
        fi
    done
fi

echo "" >> "$REPORT_FILE"
echo "=== End of Report ===" >> "$REPORT_FILE"

echo "Report saved to $REPORT_FILE"
cat "$REPORT_FILE"
