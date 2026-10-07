#!/bin/bash
set -e

CONTAINER_NAME="simple-python-app"

echo "Stopping application container..."
docker stop "$CONTAINER_NAME" 2>/dev/null || true
docker rm "$CONTAINER_NAME" 2>/dev/null || true

echo "Application stopped."
