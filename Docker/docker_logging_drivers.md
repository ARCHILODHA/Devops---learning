
# Docker Logging Drivers

## Introduction
Docker logging drivers determine how container logs are collected and stored.

They help administrators monitor application behavior and troubleshoot problems.

## Common Logging Drivers

| Driver | Description |
|---|---|
| json-file | Stores logs as JSON files |
| local | Stores logs using Docker's local format |
| journald | Sends logs to systemd journal |
| syslog | Sends logs to syslog |
| fluentd | Sends logs to Fluentd |
| awslogs | Sends logs to Amazon CloudWatch |

## Check Logging Configuration

```bash
docker info --format '{{.LoggingDriver}}'
