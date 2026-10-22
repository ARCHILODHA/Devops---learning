
# Saga Pattern

## Overview
The Saga Pattern manages a business transaction that spans multiple independent services.

Instead of relying on one distributed ACID transaction across all services, a saga consists of a sequence of local transactions. Each local transaction commits within its own service.

If a later step fails, the system may execute compensating actions to address earlier completed steps.

## Example: Online Shopping
Consider an order that requires:
1. Creating an order.
2. Reserving inventory.
3. Processing payment.
4. Arranging shipment.

If payment fails after inventory has been reserved, the system may release the inventory reservation and mark the order as failed.

These compensating actions do not necessarily erase history or reverse every real-world effect exactly.

## Two Saga Approaches

### 1. Choreography
Services communicate through events. Each service reacts to events and performs its local transaction.

Example:
```text
Order Created
     |
     v
Inventory Reserved
     |
     v
Payment Completed
     |
     v
Shipment Requested
