#!/bin/bash

LOG_FILE=$1

if [ -z "$LOG_FILE" ]; then
  echo "Usage: ./scripts/log_monitor.sh <log-file>"
  exit 1
fi

echo "===== LOG MONITOR ====="

echo ""
echo "Monitoring file: $LOG_FILE"

echo ""
echo "Checking if log file exists..."

if [ -f "$LOG_FILE" ]; then
  echo "Log file found."
else
  echo "ERROR: Log file not found."
  exit 1
fi

echo ""
echo "Recent Errors:"
grep "ERROR" "$LOG_FILE"

echo ""
echo "Total Error Count:"
grep -c "ERROR" "$LOG_FILE"

echo ""
echo "Warning Count"
grep -c "WARNING" "$LOG_FILE"

echo ""
echo "Latest Log Entries:"
tail -n 3 "$LOG_FILE"

ERROR_COUNT=$(grep -c "ERROR" "$LOG_FILE")

WARNING_COUNT=$(grep -c "WARNING" "$LOG_FILE")

echo ""
echo "Health Status:"

if [ "$ERROR_COUNT" -ge 3 ]; then
  echo "CRITICAL: High number of errors detected."
elif [ "$WARNING_COUNT" -ge 2 ]; then
  echo "WARNING: System needs attention."
else
  echo "System looks healthy."
fi
