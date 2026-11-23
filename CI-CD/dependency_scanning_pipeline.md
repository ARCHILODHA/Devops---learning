
# Dependency Scanning in CI/CD

## Introduction
Applications depend on external libraries and packages.

Some dependencies may contain known security vulnerabilities. Dependency scanning identifies these risks before application deployment.

## Objectives

- Detect vulnerable dependencies.
- Identify outdated packages.
- Reduce supply-chain risks.
- Prevent insecure releases.
- Maintain dependency visibility.

## Common Tools

| Tool | Purpose |
|---|---|
| Dependabot | Dependency updates |
| Snyk | Vulnerability scanning |
| OWASP Dependency-Check | Dependency vulnerability analysis |
| Trivy | Container and dependency scanning |
| npm audit | Node.js dependency auditing |

## GitHub Actions Example

```yaml
name: Dependency Security Scan

on:
  push:
    branches: [main]
  pull_request:

jobs:
  security-scan:
    runs-on: ubuntu-latest

    steps:
      - name: Checkout
        uses: actions/checkout@v4

      - name: Set up Node.js
        uses: actions/setup-node@v4
        with:
          node-version: 20

      - name: Install dependencies
        run: npm ci

      - name: Audit dependencies
        run: npm audit --audit-level=high
