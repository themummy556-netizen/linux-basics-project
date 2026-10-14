#!/bin/bash
# Backup all .txt files with a .bak extension

mkdir -p backups

for f in *.txt; do
    cp "$f" "backups/${f}.bak"
    echo "Backed up: $f -> backups/${f}.bak"
done

echo "All .txt files backed up!"
