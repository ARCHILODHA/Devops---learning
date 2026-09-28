
# AWS NAT Gateway

## Overview

A NAT Gateway allows resources in a private subnet to access the internet without allowing unsolicited inbound internet connections.

## Common Use Case

Private EC2 instances may need internet access to:

- Download software
- Install security updates
- Access external APIs

## Architecture

```text
Private EC2
    |
Private Route Table
    |
NAT Gateway
    |
Internet Gateway
    |
Internet
