# AWS VPC Components

## Overview

Amazon Virtual Private Cloud (VPC) allows you to create an isolated virtual network for AWS resources.

## Main Components

- VPC
- Subnets
- Route Tables
- Internet Gateway
- NAT Gateway
- Security Groups
- Network ACLs

## Example Architecture

```text
Internet
   |
Internet Gateway
   |
Public Subnet
   |
EC2 Instance
   |
Private Subnet
   |
RDS Database
