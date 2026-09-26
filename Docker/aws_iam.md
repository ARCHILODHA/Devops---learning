
# AWS IAM

## What is IAM?

IAM (Identity and Access Management) controls authentication and authorization for AWS resources.

## Main Components

### Users

Represent individual identities.

### Groups

Collection of users with common permissions.

### Roles

Identities that AWS services or users can assume.

### Policies

JSON documents defining permissions.

## Example Policy

```json
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": [
        "s3:GetObject"
      ],
      "Resource": "arn:aws:s3:::my-bucket/*"
    }
  ]
}
