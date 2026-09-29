
# AWS Elastic Container Service (ECS)

## Overview

Amazon Elastic Container Service (ECS) is a fully managed container orchestration service.

It allows applications to run Docker containers on AWS.

## Main Components

- Cluster
- Task Definition
- Task
- Service
- Container
- Task Role

## Basic Architecture

```text
Docker Image
     |
    ECR
     |
Task Definition
     |
    ECS
     |
Container
     |
Application
