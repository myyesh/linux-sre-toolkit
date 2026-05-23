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
echo "Deployment script prepared."
echo "Next version will copy files to Nginx web root and reload service."
