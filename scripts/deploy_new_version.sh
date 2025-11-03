#!/bin/bash
set -e

APP_DIR="/var/www/html"
RELEASES_DIR="$APP_DIR/releases"
CURRENT_LINK="$APP_DIR/current"
TIMESTAMP=$(date +%Y%m%d%H%M%S)
NEW_RELEASE_DIR="$RELEASES_DIR/$TIMESTAMP"

echo "Creating new release directory: $NEW_RELEASE_DIR"
mkdir -p $NEW_RELEASE_DIR

echo "Extracting application files..."
tar -xzf /tmp/artifact.tar.gz -C $NEW_RELEASE_DIR

echo "Updating symlink to new release..."
ln -sfn $NEW_RELEASE_DIR $CURRENT_LINK

echo "Permissions update..."
chown -R apache:apache $APP_DIR
chmod -R 755 $APP_DIR
