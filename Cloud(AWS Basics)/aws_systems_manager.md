
# AWS Systems Manager

## Introduction
AWS Systems Manager is a cloud management service that helps users manage AWS resources and hybrid infrastructure.

It provides centralized tools for automation, operations, configuration management, and troubleshooting.

## Key Features

| Feature | Purpose |
|---|---|
| Session Manager | Secure instance access |
| Run Command | Execute commands remotely |
| Parameter Store | Store configuration values |
| Automation | Automate operational tasks |
| Patch Manager | Manage system updates |
| Inventory | Collect software and system information |

## Architecture

```text
Administrator
      |
      v
AWS Systems Manager
      |
   +--+--------+
   |           |
   v           v
EC2         Hybrid
Instances   Servers
   |           |
   v           v
Commands    Automation
