# Distributed Transactions

## Challenge

One transaction spans multiple services.

## Approaches

### Two-Phase Commit (2PC)

- Prepare
- Commit

### Saga Pattern

Each service performs a local transaction.

If failure occurs:
Execute compensating transaction.

## Benefits

- Reliable distributed systems
