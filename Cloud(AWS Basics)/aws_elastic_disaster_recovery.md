
# AWS Elastic Disaster Recovery

## Introduction
AWS Elastic Disaster Recovery is a service that helps organizations recover applications running on physical servers, virtual machines, and cloud environments.

It supports disaster recovery by continuously replicating source servers to a recovery environment in AWS.

## What Is Disaster Recovery?

Disaster recovery is the process of restoring applications and infrastructure after an unexpected failure.

Possible causes include:

- Hardware failures.
- Cyberattacks.
- Natural disasters.
- Data center outages.
- Accidental data loss.

## Key Features

- Continuous block-level replication.
- Recovery into AWS.
- Point-in-time recovery.
- Recovery testing.
- Centralized replication management.
- Support for different source environments.

## Architecture

```text
Source Server
      |
      v
Replication Agent
      |
      v
AWS Replication Infrastructure
      |
      v
Recovery Resources
      |
      v
Recovered Application
