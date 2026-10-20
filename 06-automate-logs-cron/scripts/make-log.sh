#!/usr/bin/env bash

OUTPUT="$HOME/linux-level-6/access.log"
: > "$OUTPUT"

for i in {1..50}; do
  ip="192.168.1.$((10 + (i % 6)))"
  path="/page$((i % 5)).html"
  status="200"

  if (( i % 10 == 0 )); then
    status="500"
  elif (( i % 4 == 0 )); then
    status="404"
  fi

  printf '%s [31/Aug/2026:10:%02d:00] %s %s\n' \
    "$ip" "$((i % 60))" "$path" "$status" >> "$OUTPUT"
done

printf 'Created %s with %s lines.\n' "$OUTPUT" "$(wc -l < "$OUTPUT")"
