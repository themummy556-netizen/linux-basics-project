#!/bin/bash
# Inspect a file: check existence, line count, and size

if [ $# -eq 0 ]; then
    echo "Usage: ./inspect.sh <filename>"
    echo "Please provide a filename to inspect."
    exit 1
fi

FILE="$1"

if [ -f "$FILE" ]; then
    LINES=$(wc -l < "$FILE")
    SIZE=$(du -h "$FILE" | cut -f1)
    echo "File: $FILE"
    echo "Lines: $LINES"
    echo "Size: $SIZE"
else
    echo "Error: '$FILE' does not exist."
    exit 1
fi
