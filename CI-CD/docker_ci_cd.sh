#!/bin/bash

echo "Building Docker image..."
docker build -t myapp .

echo "Running container..."
docker run -d -p 3000:3000 myapp

echo "Done!"
