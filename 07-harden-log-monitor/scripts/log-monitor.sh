#!/usr/bin/env bash
set -euo pipefail

source_log="${SOURCE_LOG:-/var/log/demo-app/application.log}"
report_log="${REPORT_LOG:-/var/log/log-monitor/report.log}"
window_lines="${WINDOW_LINES:-200}"

if [[ ! -r "$source_log" ]]; then
  printf 'ERROR source log is not readable: %s\n' "$source_log" >&2
  exit 1
fi

recent_log="$(tail -n "$window_lines" "$source_log")"
warning_count="$(grep -c 'level=WARN' <<<"$recent_log" || true)"
error_count="$(grep -c 'level=ERROR' <<<"$recent_log" || true)"
timestamp="$(date --iso-8601=seconds)"
summary="$timestamp source=$source_log window_lines=$window_lines warnings=$warning_count errors=$error_count"

printf '%s\n' "$summary" | tee -a "$report_log"

if (( error_count > 0 )); then
  printf 'ALERT errors=%s source=%s\n' "$error_count" "$source_log" >&2
fi
