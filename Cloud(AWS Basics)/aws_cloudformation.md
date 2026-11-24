# AWS CloudFormation

## Introduction
AWS CloudFormation is an Infrastructure as Code (IaC) service that allows users to create and manage AWS resources using templates.

Instead of manually creating resources through the AWS Console, developers define infrastructure in YAML or JSON files.

## Key Features

- Infrastructure as Code.
- Automated resource provisioning.
- Repeatable infrastructure deployment.
- Dependency management.
- Stack updates and deletion.
- Integration with other AWS services.

## Important Concepts

| Concept | Description |
|---|---|
| Template | YAML or JSON infrastructure definition |
| Stack | Collection of AWS resources |
| Resource | AWS component such as EC2 or S3 |
| Parameter | Input value supplied to a template |
| Output | Information returned after deployment |
| Change Set | Preview of proposed stack changes |

## CloudFormation Template Example

Create `template.yaml`:

```yaml
AWSTemplateFormatVersion: '2010-09-09'

Description: Simple S3 Bucket Deployment

Resources:
  ApplicationBucket:
    Type: AWS::S3::Bucket
    Properties:
      VersioningConfiguration:
        Status: Enabled

Outputs:
  BucketName:
    Description: Created S3 Bucket
    Value: !Ref ApplicationBucket
