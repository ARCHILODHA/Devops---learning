
# AWS Transit Gateway

## Introduction
AWS Transit Gateway is a networking service that connects multiple Amazon VPCs and on-premises networks through a central network hub.

It simplifies communication between large numbers of networks.

## Why Transit Gateway?

Without Transit Gateway, connecting many VPCs can require complex peering relationships.

Transit Gateway provides centralized connectivity and routing.

## Architecture

```text
          VPC 1
             |
             |
VPC 2 --- Transit Gateway --- VPC 3
             |
             |
       On-Premises Network
