# AWS Secrets Manager

## Overview

AWS Secrets Manager helps securely store and manage sensitive information.

## Examples

Secrets may include:

- Database passwords
- API keys
- Application credentials
- Tokens

## Basic Workflow

```text
Application
     |
Secrets Manager
     |
Retrieve Secret
     |
Connect to Database

Benefits
Centralized secret management
Access control using IAM
Secret rotation support
Reduced need to hard-code credentials
Best Practice

Do not store database passwords or API keys directly inside application source code.
