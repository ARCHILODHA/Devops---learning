
# AWS VPC Endpoints

## Introduction
VPC Endpoints allow resources inside an Amazon VPC to communicate with supported AWS services without requiring traffic to use the public internet.

They help improve network security and simplify private connectivity.

## Why VPC Endpoints?

Consider an EC2 instance inside a private subnet that needs to access Amazon S3.

Without an appropriate private connectivity solution, internet routing may be required.

A VPC Endpoint can provide a private path to supported AWS services.

## Types of VPC Endpoints

### 1. Gateway Endpoint

Gateway endpoints support:
- Amazon S3.
- Amazon DynamoDB.

They add routes to selected VPC route tables.

### 2. Interface Endpoint

Interface endpoints use AWS PrivateLink and create network interfaces in selected subnets.

They support many AWS services.

## Architecture

```text
Private EC2 Instance
        |
        v
   VPC Endpoint
        |
        v
   AWS Service
        |
        v
       S3
