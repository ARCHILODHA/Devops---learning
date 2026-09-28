
# AWS Key Management Service (KMS)

## Overview

AWS Key Management Service (KMS) helps create and manage cryptographic keys used to protect data.

## Common Uses

KMS can be used with services such as:

- S3
- EBS
- RDS
- Secrets Manager

## Basic Concept

```text
Application
     |
AWS Service
     |
AWS KMS
     |
Encryption Key

Benefits
Centralized key management
Access control
Encryption support
Integration with AWS services
Best Practice

Use appropriate IAM permissions and key policies to restrict access to encryption keys.
