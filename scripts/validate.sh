#!/bin/bash
set -e

echo "Validating deployment..."
curl -I http://localhost | grep "200 OK" || {
  echo "Validation failed!"
  exit 1
}
