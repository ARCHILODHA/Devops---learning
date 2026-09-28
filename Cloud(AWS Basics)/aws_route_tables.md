
# AWS Route Tables

## Overview

A route table contains rules that determine where network traffic is sent.

## Example

```text
Destination        Target

10.0.0.0/16        local
0.0.0.0/0          Internet Gateway
Public Route Table

A public route table normally contains a route to an Internet Gateway.

Private Route Table

A private route table may contain a route to a NAT Gateway for outbound internet access.

Important Concepts
Destination
Target
Route
Subnet Association
Best Practice

Use separate route tables when different subnets require different routing behavior.
