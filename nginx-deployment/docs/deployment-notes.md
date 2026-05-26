# Nginx Deployment Notes

This module demonstrates how a static website can be deployed using Nginx.

## Current Validation Checks

The deployment script validates:

- source directory exists
- `index.html` exists
- Nginx is installed on the target system

## Expected Target Environment

This script is intended to run on an Ubuntu server or VM where Nginx is installed.

Expected Nginx web root:

```text
/var/www/html
