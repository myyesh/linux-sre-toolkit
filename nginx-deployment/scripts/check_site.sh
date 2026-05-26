#!/bin/bash

echo "===== STATIC SITE HEALTH CHECK ====="

SITE_URL=${1:-http://localhost}

echo "Checking site URL: $SITE_URL"

echo ""
echo "Sending HTTP request..."

HTTP_STATUS=$(curl -s -o /dev/null -w "%{http_code}" "$SITE_URL")

if [ "$HTTP_STATUS" -eq 200 ]; then
  echo "OK: Site is reachable. HTTP Status: $HTTP_STATUS"
  exit 0
else
  echo "ERROR: Site check failed. HTTP Status: $HTTP_STATUS"
  exit 1
fi
