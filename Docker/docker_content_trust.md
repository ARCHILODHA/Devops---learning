
# Docker Content Trust

## Introduction
Docker Content Trust is a mechanism historically used to verify the integrity and publisher authenticity of Docker images through digital signatures.

It helps users avoid pulling untrusted or modified images.

## Enable Content Trust

```bash
export DOCKER_CONTENT_TRUST=1
