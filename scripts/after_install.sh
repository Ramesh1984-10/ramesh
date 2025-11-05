#!/bin/bash
set -e

echo "Extracting files..."
# Files are already copied to /var/www/html/releases/latest by CodeDeploy
chown -R ubuntu:ubuntu /var/www/html/releases/latest
