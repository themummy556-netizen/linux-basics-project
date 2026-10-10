#!/bin/bash

echo "=============================="
echo "  System Health Check Report"
echo "=============================="
echo ""
echo "Date: $(date)"
echo ""
echo "--- Uptime ---"
uptime
echo ""
echo "--- Memory ---"
free -h
echo ""
echo "--- Disk Usage (/) ---"
df -h /
echo ""
echo "--- Top 5 Processes by Memory ---"
ps aux --sort=-%mem | head -6
echo ""
echo "--- Network Check ---"
ping -c 1 8.8.8.8 > /dev/null 2>&1 && echo "Network: OK" || echo "Network: UNREACHABLE"
echo ""
echo ""
echo "--- SSH Service ---"
systemctl is-active ssh 2>/dev/null && echo "SSH: running" || echo "SSH: not running"
echo ""
echo "--- Listening Ports ---"
ss -tuln
echo "=============================="
echo "  Report complete!"
echo "=============================="
