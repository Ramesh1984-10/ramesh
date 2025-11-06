#!/bin/bash
set -e

echo "Preparing deployment directories..."
sudo mkdir -p /var/www/html/releases/new
sudo chown -R ubuntu:ubuntu /var/www/html
