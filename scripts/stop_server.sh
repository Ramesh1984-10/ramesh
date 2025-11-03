#!/bin/bash
echo "Stopping Apache gracefully..."
sudo systemctl stop httpd || true
