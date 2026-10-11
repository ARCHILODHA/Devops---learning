
# Canary Deployment Project

## Overview

Canary Deployment gradually releases a new application version to a small percentage of users before making it available to everyone.

## Objectives

- Perform controlled releases.
- Detect production issues early.
- Reduce deployment risk.
- Monitor the new version before full rollout.

## Architecture

```text
                    Users
                      |
                Load Balancer
                      |
             -------------------
             |                 |
          90% Traffic       10% Traffic
             |                 |
          Version 1         Version 2
          Stable            Canary
