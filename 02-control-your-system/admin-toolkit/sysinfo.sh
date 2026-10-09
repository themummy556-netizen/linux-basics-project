#!/bin/bash
echo "=============================="
echo "  SYSTEM INFORMATION REPORT"
echo "=============================="
echo ""
echo "Report generated: $(date)"
echo "Current user: $(whoami)"
echo ""
echo "--- Top 10 Running Processes ---"
ps aux | head -n 11
echo ""
echo "=============================="
echo "  END OF REPORT"
echo "=============================="
