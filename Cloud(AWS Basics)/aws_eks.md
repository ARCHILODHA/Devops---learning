
# AWS Elastic Kubernetes Service (EKS)

## Overview

Amazon Elastic Kubernetes Service (EKS) is a managed Kubernetes service provided by AWS.

It allows organizations to run Kubernetes applications on AWS.

## Kubernetes Architecture

```text
Developer
    |
kubectl
    |
Kubernetes Cluster
    |
+-------------------+
| Control Plane     |
+-------------------+
         |
+-------------------+
| Worker Nodes      |
+-------------------+
         |
    Applications
