#!/bin/bash
set -e

echo "Cleaning up old 'latest' folder..."
rm -rf /var/www/html/releases/latest
mkdir -p /var/www/html/releases/latest
