
# GitHub Actions CI/CD Project

## Overview

This project demonstrates implementing a CI/CD pipeline using GitHub Actions.

The workflow automatically executes whenever code is pushed to the repository.

## Objectives

- Automate application testing
- Build applications automatically
- Create Docker images
- Implement continuous integration
- Understand GitHub Actions workflows

## Technologies Used

- GitHub Actions
- Git
- Docker
- YAML
- Linux

## Workflow

```text
Git Push
   |
   v
GitHub Actions
   |
   +--> Checkout
   |
   +--> Install Dependencies
   |
   +--> Run Tests
   |
   +--> Build
   |
   v
Deployment
