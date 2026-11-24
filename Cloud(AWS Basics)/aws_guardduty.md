
# Amazon GuardDuty

## Introduction
Amazon GuardDuty is a managed threat detection service that continuously monitors AWS accounts and workloads for suspicious activity.

It analyzes multiple AWS data sources to identify potential security threats.

## Key Features

- Threat detection.
- Continuous security monitoring.
- Suspicious API activity detection.
- Malware protection capabilities.
- Threat intelligence integration.
- Security findings and alerts.

## Data Sources

GuardDuty can analyze signals from sources such as:

- AWS CloudTrail management events.
- VPC Flow Logs.
- DNS query logs.
- Other supported AWS security data sources.

## How GuardDuty Works

```text
AWS Environment
      |
      v
Security Data Collection
      |
      v
GuardDuty Analysis
      |
      v
Threat Detection
      |
      v
Security Findings
      |
      v
Response / Investigation
