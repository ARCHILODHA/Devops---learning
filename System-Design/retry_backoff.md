
# Retry and Exponential Backoff

## Overview
Retries allow an application to attempt an operation again after a temporary failure.

Exponential backoff increases the delay between successive retry attempts. It reduces pressure on an overloaded service and helps prevent many clients from retrying simultaneously.

Retries must be designed carefully because they can increase load and duplicate operations.

## When Retries Are Useful
Retries may help with:
- Temporary network failures.
- Rate-limit responses.
- Short-lived service unavailability.
- Transient database connection errors.

Retries are less useful for permanent failures such as invalid input, authorization errors, or requests for resources that do not exist.

## Exponential Backoff
A common formula is:

```text
delay = min(max_delay, base_delay * 2^attempt)
