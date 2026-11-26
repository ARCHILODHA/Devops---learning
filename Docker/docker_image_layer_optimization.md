
# Docker Image Layer Optimization

## Introduction
Docker images consist of multiple layers. Each Dockerfile instruction can create a new layer.

Optimizing layers reduces image size and improves build performance.

## Example: Less Optimized Dockerfile

```dockerfile
FROM ubuntu:24.04

RUN apt-get update
RUN apt-get install -y curl
RUN apt-get install -y nginx
RUN apt-get clean
