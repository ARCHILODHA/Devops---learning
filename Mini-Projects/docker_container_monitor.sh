#!/bin/bash

# Monitor Docker containers and report their status

if ! command -v docker >/dev/null 2>&1; then
    echo "Error: Docker CLI is not installed."
    exit 1
fi

if ! docker info >/dev/null 2>&1; then
    echo "Error: Docker daemon is unavailable or access is denied."
    exit 1
fi

echo "Docker Container Status"
echo "======================="

docker ps -a --format 'table {{.Names}}\t{{.Status}}\t{{.Image}}'

echo
STOPPED_COUNT=$(docker ps -aq --filter "status=exited" | wc -l)

echo "Stopped containers: $STOPPED_COUNT"

if [ "$STOPPED_COUNT" -gt 0 ]; then
    echo "WARNING: Some containers have exited."
else
    echo "All containers are running or otherwise not exited."
fi
