
# Bulkhead Pattern

## Overview
The Bulkhead Pattern isolates components or resources so that a failure or overload in one area does not exhaust resources across the entire application.

The name comes from ship compartments. If one compartment floods, bulkheads help prevent the water from spreading throughout the ship.

In software systems, bulkheads help limit the impact of slow or failing dependencies.

## Why It Matters
Imagine an e-commerce application with services for:
- Product search.
- Payments.
- Recommendations.
- Notifications.

If recommendation requests consume every available thread, checkout requests may become slow or fail.

A bulkhead design reserves or limits resources so that recommendation failures do not overwhelm the payment workflow.

## Common Bulkhead Techniques

### 1. Thread Pool Isolation
Different operations use separate thread pools.

If one dependency becomes slow, its thread pool can fill up without necessarily consuming all worker threads.

### 2. Semaphore Isolation
A semaphore limits how many operations can execute concurrently.

Requests that exceed the limit can be rejected or delayed.

### 3. Connection Pool Isolation
Different services or dependencies can use separate connection pools.

A database connection problem in one workload is less likely to exhaust the connections reserved for another workload.

### 4. Resource and Quota Isolation
Separate containers, CPU limits, memory limits, or workload quotas can prevent one component from consuming all shared resources.

## Architecture
```text
                 Application
                      |
           +----------+----------+
           |          |          |
           v          v          v
       Payments   Search     Recommendations
       Pool        Pool          Pool
           |          |          |
           v          v          v
       Payment DB  Search DB   Recommendation API
