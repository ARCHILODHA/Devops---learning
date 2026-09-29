# AWS Elastic Container Registry (ECR)

## Overview

Amazon Elastic Container Registry (ECR) is a managed container image registry provided by AWS.

It allows developers to store, manage, and deploy Docker container images.

## Key Features

- Store Docker images
- Private and public repositories
- Image versioning
- Integration with Amazon ECS
- Integration with Amazon EKS
- Integration with AWS Lambda
- IAM-based access control

## Basic Workflow

```text
Developer
    |
Docker Build
    |
Docker Image
    |
Amazon ECR
    |
ECS / EKS / EC2
