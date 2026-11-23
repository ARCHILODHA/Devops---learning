# Reusable Workflows in CI/CD

## Introduction
Reusable workflows allow teams to define a CI/CD workflow once and call it from multiple repositories or workflows.

They reduce duplication and make pipeline maintenance easier.

## Benefits
- Reuse common build and deployment steps.
- Maintain consistent standards across repositories.
- Reduce duplicated YAML configuration.
- Simplify pipeline maintenance.
- Centralize security and testing practices.

## GitHub Actions Example

Create `.github/workflows/reusable-build.yml`:

```yaml
name: Reusable Build

on:
  workflow_call:
    inputs:
      java-version:
        required: false
        type: string
        default: "17"

jobs:
  build:
    runs-on: ubuntu-latest

    steps:
      - name: Checkout
        uses: actions/checkout@v4

      - name: Set up Java
        uses: actions/setup-java@v4
        with:
          distribution: temurin
          java-version: ${{ inputs.java-version }}

      - name: Build
        run: mvn clean package
