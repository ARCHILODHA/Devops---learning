
# Container Image Signing in CI/CD

## Introduction
Container image signing verifies the authenticity and integrity of container images.

It helps ensure that deployed images were produced by trusted build processes and have not been modified unexpectedly.

## Why Image Signing Matters

- Verify image authenticity.
- Protect against image tampering.
- Improve software supply-chain security.
- Establish trust between build and deployment systems.
- Support compliance requirements.

## Common Tool

Cosign is a tool from the Sigstore project used to sign and verify container images.

## Sign an Image

First, build and push an image:

```bash
docker build -t myapp:1.0 .
docker tag myapp:1.0 registry.example.com/myapp:1.0
docker push registry.example.com/myapp:1.0
