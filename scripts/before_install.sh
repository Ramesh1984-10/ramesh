#!/bin/bash
set -e

echo "Starting deployment using rsync..."

# Sync current directory contents to /var/www/html
sudo rsync -av --delete ./ /var/www/html/

echo "Deployment completed successfully!"
