
# AWS API Gateway

## Overview

Amazon API Gateway is a managed AWS service used to create, publish, monitor, and secure APIs.

It can act as an entry point between clients and backend services.

## Basic Architecture

```text
Client
   |
API Gateway
   |
+----------------+
|                |
Lambda         EC2
|                |
Application      |
