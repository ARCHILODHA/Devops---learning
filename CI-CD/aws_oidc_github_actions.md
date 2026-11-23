
# AWS OIDC Authentication with GitHub Actions

## Introduction
OpenID Connect (OIDC) allows GitHub Actions to authenticate with AWS without storing long-lived AWS access keys as repository secrets.

GitHub generates an identity token, and AWS STS exchanges it for temporary credentials.

## Benefits

- Avoid long-lived access keys.
- Use temporary AWS credentials.
- Improve credential security.
- Apply fine-grained IAM permissions.
- Simplify cloud authentication.

## Authentication Flow

```text
GitHub Actions Workflow
        |
        v
Request OIDC Token
        |
        v
AWS Identity Provider
        |
        v
IAM Role Trust Policy
        |
        v
Temporary AWS Credentials
        |
        v
Access AWS Resources
