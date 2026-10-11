# Blue-Green Deployment Project

## Overview

This project demonstrates Blue-Green Deployment, a release strategy where two production environments are maintained:

- Blue: Current production version
- Green: New application version

Traffic is switched from Blue to Green after the new version is tested successfully.

## Objectives

- Understand zero-downtime deployment.
- Deploy two application versions.
- Switch traffic between environments.
- Reduce deployment risk.
- Enable quick rollback.

## Architecture

```text
                    Users
                      |
                      v
                Load Balancer
                 /          \
                /            \
          Blue App         Green App
          v1.0             v2.0
             \              /
              \            /
                Database
