#!/bin/bash

echo "===== DOCKER HEALTH CHECK ====="

echo "Checking Docker daemon..."

if ! docker info >/dev/null 2>&1; then
  echo "ERROR: Docker daemon is not running or not reachable."
  exit 1
fi

echo "OK: Docker daemon is reachable."

RUNNING_CONTAINERS=$(docker ps -q | wc -l | tr -d ' ')
TOTAL_CONTAINERS=$(docker ps -a -q | wc -l | tr -d ' ')

echo "Running containers: $RUNNING_CONTAINERS"
echo "Total containers: $TOTAL_CONTAINERS"

echo ""
echo "Active container list:"
docker ps --format "table {{.Names}}\t{{.Status}}\t{{.Ports}}"

exit 0
