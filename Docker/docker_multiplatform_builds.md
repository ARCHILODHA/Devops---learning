# Docker Multi-Platform Builds

## Introduction
Multi-platform builds allow Docker images to run on different CPU architectures, such as AMD64 and ARM64.

This is useful when deploying applications across cloud servers, laptops and ARM-based devices.

## Common Architectures

- linux/amd64: Common Intel and AMD processors.
- linux/arm64: ARM-based processors.
- linux/arm/v7: Some 32-bit ARM devices.

## Check Supported Platforms

```bash
docker buildx inspect --bootstrap
