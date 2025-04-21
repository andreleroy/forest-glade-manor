#!/bin/bash

# Script to run commands inside the berta container

CONTAINER_NAME="berta-web-1"

# Check if container is running
if ! docker ps --format '{{.Names}}' | grep -q "$CONTAINER_NAME"; then
  echo "⚠️  Container $CONTAINER_NAME is not running."
  echo "👉 Run 'docker compose up -d' first."
  exit 1
fi

# If no command is passed, open a shell
if [ $# -eq 0 ]; then
  echo "🛠️  Opening shell inside $CONTAINER_NAME..."
  docker exec -it "$CONTAINER_NAME" sh
else
  echo "🚀 Running '$@' inside $CONTAINER_NAME..."
  docker exec -it "$CONTAINER_NAME" "$@"
fi
