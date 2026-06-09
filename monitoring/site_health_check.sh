#!/bin/bash

URL=${1:-http://localhost:8080}

echo "===== SITE HEALTH CHECK ====="
echo "Checking URL: $URL"

HTTP_STATUS=$(curl -s -o /dev/null -w "%{http_code}" "$URL")
RESPONSE_TIME=$(curl -s -o /dev/null -w "%{time_total}" "$URL")

if [ "$HTTP_STATUS" -eq 200 ]; then
  echo "OK: Site is reachable"
  echo "HTTP Status: $HTTP_STATUS"
  echo "Response Time: ${RESPONSE_TIME}s"
  exit 0
else
  echo "ERROR: Site health check failed"
  echo "HTTP Status: $HTTP_STATUS"
  echo "Response Time: ${RESPONSE_TIME}s"
  exit 1
fi
