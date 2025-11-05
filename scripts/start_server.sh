#!/bin/bash
set -e

echo "Switching symlink to new release..."
ln -sfn /var/www/html/releases/latest /var/www/html/current
sudo systemctl reload apache2
echo "Deployment complete — zero downtime achieved."
