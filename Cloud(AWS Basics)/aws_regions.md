
# AWS Regions

## Overview

An AWS Region is a geographical area containing multiple Availability Zones.

## Example

```text
Region
|
|-- Availability Zone A
|-- Availability Zone B
|-- Availability Zone C

Region Selection Factors

Consider:

Latency
Data residency
Service availability
Pricing
Compliance requirements
Example

A user-facing application should generally be deployed in a region that provides suitable latency for its target users.

Best Practice

Choose the region carefully because moving resources between regions can require additional configuration and data transfer.
