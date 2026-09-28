
# AWS Availability Zones

## Overview

An Availability Zone (AZ) is an isolated location within an AWS Region.

AWS Regions contain multiple Availability Zones.

## Example

```text
AWS Region
|
|-- Availability Zone A
|     |-- EC2
|     |-- Subnet
|
|-- Availability Zone B
      |-- EC2
      |-- Subnet

Benefits
Fault isolation
High availability
Better application resilience
Best Practice

Deploy critical applications across multiple Availability Zones.

Example

A load balancer can distribute traffic between application servers running in different Availability Zones.
