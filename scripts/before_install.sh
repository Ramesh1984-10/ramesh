#!/bin/bash
set -e

echo "Starting deployment using rsync..."
sudo rm -rf /var/www/html/

# Sync current directory contents to /var/www/html
sudo rsync -av --delete /src /var/www/html/

echo "Deployment completed successfully!"
