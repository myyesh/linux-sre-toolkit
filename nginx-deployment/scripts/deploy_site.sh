#!/bin/bash

echo "===== NGINX STATIC SITE DEPLOYMENT ====="

SITE_SOURCE="./nginx-deployment/site"
NGINX_TARGET="/var/www/html"

echo "Source directory: $SITE_SOURCE"
echo "Target directory: $NGINX_TARGET"

echo ""
echo "Checking if source directory exists..."

if [ ! -d "$SITE_SOURCE" ]; then
  echo "ERROR: Source directory does not exist."
  exit 1
fi

echo "Source directory found."

echo ""
echo "Checking if index.html exists..."

if [ ! -f "$SITE_SOURCE/index.html" ]; then
  echo "ERROR: index.html not found in source directory."
  exit 1
fi

echo "index.html found."

echo ""
echo "Validating Nginx installation..."

if ! command -v nginx >/dev/null 2>&1; then
  echo "ERROR: Nginx is not installed or not available in PATH."
  exit 1
fi

echo "Nginx command found."

echo ""
echo "Deployment validation complete."
echo "Ready to copy site files to Nginx web root on target server."
