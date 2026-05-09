#!/bin/bash

CURRENT_TIME=$(date)

echo "Environment: $APP_ENV"

echo "===== SYSTEM HEALTH REPORT ====="
echo "Run Time: $CURRENT_TIME"

echo ""
echo "Disk Usage:"
df -h

echo ""
echo "Memory Usage:"
vm_stat

echo ""
echo "Top Processes:"
ps aux | head
