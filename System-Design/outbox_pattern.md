
# Transactional Outbox Pattern

## Overview
The Transactional Outbox Pattern helps an application update its database and publish an event reliably.

A common problem occurs when an application commits a database transaction but fails before publishing the corresponding event.

The outbox pattern stores the business change and the event record in the same local database transaction. A separate publisher sends stored events to a message broker.

## The Dual-Write Problem
Imagine an order service that:
1. Saves an order to its database.
2. Publishes an OrderCreated event.

If the database write succeeds but event publishing fails, downstream services may never learn about the order.

Reversing the order of these operations creates a different failure risk.

## Architecture
```text
Order Request
     |
     v
Order Service
     |
     v
Database Transaction
  |             |
  v             v
Orders Table   Outbox Table
                   |
                   v
             Event Publisher
                   |
                   v
              Message Broker
                   |
                   v
             Consumer Services
