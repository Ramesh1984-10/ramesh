#!/bin/bash
set -e

echo "Restarting web server..."
sudo systemctl restart apache2 

echo "Deployment completed successfully!"
