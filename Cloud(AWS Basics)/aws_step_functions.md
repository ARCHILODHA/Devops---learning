
# AWS Step Functions

## Introduction
AWS Step Functions is a serverless workflow orchestration service.

It coordinates multiple AWS services into workflows using state machines.

It is useful when an application requires several sequential or parallel processing steps.

## Key Components

| Component | Description |
|---|---|
| State Machine | Defines the workflow |
| State | Individual workflow step |
| Task | Performs an operation |
| Choice | Adds conditional branching |
| Parallel | Executes branches simultaneously |
| Wait | Delays execution |
| Retry | Reattempts failed operations |

## Workflow Architecture

```text
Start
  |
  v
Validate Order
  |
  v
Check Payment
  |
  v
Choice State
  |
  +------+
  |      |
Success  Failed
  |      |
  v      v
Ship    Notify
Order   Customer
  |
  v
 End
