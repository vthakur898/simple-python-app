#!/bin/bash
set -e

APP_DIR="/opt/simple-python-app"
CONTAINER_NAME="simple-python-app"
IMAGE_NAME="simple-python-app:latest"

cd "$APP_DIR"

echo "Building Docker image..."
docker build -t "$IMAGE_NAME" .

echo "Starting container..."
docker rm -f "$CONTAINER_NAME" 2>/dev/null || true
docker run -d \
  --name "$CONTAINER_NAME" \
  -p 5000:5000 \
  "$IMAGE_NAME"

echo "Application started on port 5000."
