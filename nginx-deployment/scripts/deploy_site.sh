#!/bin/bash

APP_ENV=${APP_ENV:-development}

echo "Environment: $APP_ENV"

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

echo ""
echo "Deployment validation complete."

echo ""
echo "Copying site files to Nginx web root..."
sudo cp -r "$SITE_SOURCE"/* "$NGINX_TARGET"/

if [ $? -ne 0 ]; then
  echo "ERROR: Failed to copy site files."
  exit 1
fi

echo "Site files copied successfully."

echo ""
echo "Testing Nginx configuration..."
sudo nginx -t

if [ $? -ne 0 ]; then
  echo "ERROR: Nginx configuration test failed."
  exit 1
fi

echo "Nginx configuration is valid."

echo ""
echo "Reloading Nginx..."
sudo systemctl reload nginx

if [ $? -ne 0 ]; then
  echo "ERROR: Failed to reload Nginx."
  exit 1
fi

echo "Deployment completed successfully."
