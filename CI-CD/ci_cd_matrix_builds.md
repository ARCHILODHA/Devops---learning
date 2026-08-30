
# CI/CD Matrix Builds

## Overview

Matrix builds allow the same pipeline to run against multiple environments, operating systems, or software versions.

This is useful when an application needs compatibility testing.

## Example

A project may need to support:

- Node.js 18
- Node.js 20
- Node.js 22

Instead of creating separate jobs, a matrix can be used.

## GitHub Actions Example

```yaml
name: Matrix Testing

on:
  push:

jobs:

  test:
    runs-on: ubuntu-latest

    strategy:
      matrix:
        node-version:
          - 18
          - 20
          - 22

    steps:

      - uses: actions/checkout@v4

      - name: Setup Node.js
        uses: actions/setup-node@v4
        with:
          node-version: ${{ matrix.node-version }}

      - name: Install Dependencies
        run: npm ci

      - name: Run Tests
        run: npm test
