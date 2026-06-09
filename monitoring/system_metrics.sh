#!/bin/bash

echo "===== SYSTEM METRICS ====="
echo ""

echo "Hostname:"
hostname

echo ""
echo "Disk Usage:"
df -h /

echo ""
echo "Memory Usage:"
free -h 2>/dev/null || vm_stat

echo ""
echo "Load Average:"
uptime

echo ""
echo "CPU Information:"
sysctl -n machdep.cpu.brand_string 2>/dev/null || lscpu | grep "Model name"

echo ""
echo "Current Time:"
date
