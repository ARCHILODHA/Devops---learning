
# AWS Config

## Introduction
AWS Config is a service that records and evaluates the configurations of supported AWS resources.

It helps organizations understand how their AWS infrastructure changes over time and whether resources follow defined compliance rules.

## Key Features

- Resource configuration tracking.
- Configuration history.
- Compliance monitoring.
- Configuration snapshots.
- Change notifications.
- Managed and custom rules.

## Important Components

| Component | Description |
|---|---|
| Configuration Recorder | Records resource configurations |
| Configuration Item | Snapshot of a resource configuration |
| Config Rule | Evaluates resource compliance |
| Delivery Channel | Delivers configuration information |
| Conformance Pack | Collection of Config rules |

## Architecture

```text
AWS Resources
      |
      v
Configuration Recorder
      |
      v
AWS Config
      |
      v
Config Rules
      |
      v
Compliance Evaluation
      |
   +--+--+
   |     |
Compliant Non-Compliant
   |     |
   v     v
Report  Alert
