#!/bin/bash
set -e

echo "Copying files to /var/www/html/releases/new ..."
rsync -av --delete /var/www/html/releases/new/ /var/www/html/releases/latest/
