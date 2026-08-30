# CI/CD Pipeline Triggers

## Overview

Pipeline triggers define when a CI/CD workflow should start automatically.

Triggers help teams automate builds, tests, and deployments whenever specific events occur.

## Common Triggers

- Push to a branch
- Pull request
- Tag creation
- Scheduled execution
- Manual execution
- Webhook events
- Release creation

## GitHub Actions Example

```yaml
name: CI Pipeline

on:
  push:
    branches:
      - main
      - develop

  pull_request:
    branches:
      - main

  workflow_dispatch:

jobs:
  build:
    runs-on: ubuntu-latest

    steps:
      - uses: actions/checkout@v4

      - name: Build
        run: echo "Building application"
