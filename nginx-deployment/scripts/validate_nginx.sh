#!/bin/bash

echo "===== NGINX VALIDATION CHECK ====="

echo ""
echo "Checking if Nginx is installed..."

if ! command -v nginx >/dev/null 2>&1; then
  echo "ERROR: Nginx is not installed."
  exit 1
fi

echo "Nginx is installed."

echo ""
echo "Checking Nginx version..."
nginx -v

echo ""
echo "Testing Nginx configuration..."
sudo nginx -t

if [ $? -ne 0 ]; then
  echo "ERROR: Nginx configuration test failed."
  exit 1
fi

echo ""
echo "Checking Nginx service status..."
sudo systemctl status nginx --no-pager

echo ""
echo "Nginx validation completed."

