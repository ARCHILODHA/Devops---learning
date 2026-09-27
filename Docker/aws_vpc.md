# AWS VPC

## What is VPC?

Amazon VPC (Virtual Private Cloud) allows you to create a logically isolated network inside AWS.

## Main Components

- VPC
- Subnet
- Route Table
- Internet Gateway
- NAT Gateway
- Security Group
- Network ACL

## Basic Architecture

```text
                    Internet
                       |
                Internet Gateway
                       |
                    VPC
                 /       \
          Public Subnet  Private Subnet
               |              |
             EC2          Database
