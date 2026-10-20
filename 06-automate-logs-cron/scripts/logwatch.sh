#!/usr/bin/env bash

PROJECT_DIR="$HOME/linux-level-6"
LOG_FILE="$PROJECT_DIR/access.log"
REPORT_FILE="$PROJECT_DIR/watchdog-report.txt"

if [[ ! -f "$LOG_FILE" ]]; then
  printf 'Error: %s was not found.\n' "$LOG_FILE" >&2
  exit 1
fi

{
  printf '\n=== Log Watchdog: %s ===\n' "$(date '+%Y-%m-%d %H:%M:%S')"
  printf 'Total requests: %s\n' "$(wc -l < "$LOG_FILE")"
  printf '404 errors: %s\n' "$(grep -c ' 404$' "$LOG_FILE")"
  printf '500 errors: %s\n' "$(grep -c ' 500$' "$LOG_FILE")"
  printf 'Top 3 IPs:\n'
  awk '{print $1}' "$LOG_FILE" | sort | uniq -c | sort -nr | head -n 3
} >> "$REPORT_FILE"

printf 'Updated %s\n' "$REPORT_FILE"
