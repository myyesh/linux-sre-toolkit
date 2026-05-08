#!/bin/bash

CURRENT_TIME=$(date)

TOTAL_ERRORS=0
TOTAL_WARNINGS=0

print_log_summary() {

  LOG=$1

  echo ""
  echo "Checking: $LOG"

  ERROR_COUNT=$(grep -c "ERROR" "$LOG")
  WARNING_COUNT=$(grep -c "WARNING" "$LOG")

  TOTAL_ERRORS=$((TOTAL_ERRORS + ERROR_COUNT))
  TOTAL_WARNINGS=$((TOTAL_WARNINGS + WARNING_COUNT))

  echo "Errors: $ERROR_COUNT"
  echo "Warnings: $WARNING_COUNT"
}

if [ "$1" == "--help" ]; then
  echo "Usage: ./scripts/check_all_logs.sh [log-directory]"
  exit 0
fi

echo "===== MULTI LOG CHECK ====="
echo "Run Time: $CURRENT_TIME"

LOG_DIR=${1:-logs}
for LOG in "$LOG_DIR"/*.log
do
  print_log_summary "$LOG"
done

echo ""
echo "===== FINAL SUMMARY ====="

echo "Total Errors Across Logs: $TOTAL_ERRORS"
echo "Total Warnings Across Logs: $TOTAL_WARNINGS"

echo ""
echo "===== OVERALL HEALTH ====="

if [ "$TOTAL_ERRORS" -ge 5 ]; then
  echo "CRITICAL: Multiple errors detected across logs."
  exit 2
elif [ "$TOTAL_WARNINGS" -ge 3 ]; then
  echo "WARNING: Multiple warnings detected across logs."
  exit 1
else
  echo "OK: Logs look healthy."
  exit 0
fi
