#!/bin/bash
# Check whether report.txt exists

if [ -f "report.txt" ]; then
    echo "report.txt exists! Ready to go."
else
    echo "report.txt does not exist. You may need to create it."
fi
