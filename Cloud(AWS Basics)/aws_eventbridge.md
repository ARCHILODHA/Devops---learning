
# Amazon EventBridge

## Introduction
Amazon EventBridge is a serverless event bus service that connects applications using events.

It allows AWS services, applications, and external systems to communicate without requiring direct integration.

## Key Concepts

| Component | Description |
|---|---|
| Event | A record describing something that happened |
| Event Bus | Receives and routes events |
| Rule | Defines which events should match |
| Target | Service that receives matching events |
| Event Source | Service or application generating events |

## Architecture

```text
AWS Service / Application
          |
          v
      EventBridge
          |
          v
      Event Rule
          |
     +----+----+
     |         |
     v         v
   Lambda     SQS
     |         |
     v         v
 Processing  Queue
