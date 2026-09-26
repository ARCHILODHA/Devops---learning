# Docker CI/CD

Docker can be integrated into CI/CD pipelines to build, test and deploy applications consistently.

## Typical Pipeline

```text
Developer
    ↓
Git Push
    ↓
CI Server
    ↓
Run Tests
    ↓
Build Docker Image
    ↓
Security Scan
    ↓
Push Image
    ↓
Deploy
Example Commands
docker build -t myapp:$GIT_COMMIT .
docker run --rm myapp:$GIT_COMMIT npm test
docker push username/myapp:$GIT_COMMIT
GitHub Actions Example
name: Docker CI

on:
  push:
    branches:
      - main

jobs:
  build:
    runs-on: ubuntu-latest

    steps:
      - uses: actions/checkout@v4

      - name: Build Docker Image
        run: docker build -t myapp:${{ github.sha }} .

      - name: Run Tests
        run: docker run --rm myapp:${{ github.sha }} npm test
Benefits
Consistent environments
Automated testing
Faster deployments
Repeatable builds
Easier rollback
