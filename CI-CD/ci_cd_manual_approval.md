
# CI/CD Manual Approval Gates

## Overview

Manual approval gates require a responsible person to approve a deployment before it proceeds to a sensitive environment.

They are commonly used before production deployments.

## Pipeline Flow

```text
Code
 |
 v
Build
 |
 v
Test
 |
 v
Staging
 |
 v
Manual Approval
 |
 +---- Reject ----> Stop
 |
 v
Production
