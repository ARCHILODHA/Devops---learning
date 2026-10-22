# CAP Theorem

## Overview
The CAP Theorem is a fundamental concept in distributed systems. It states that when a network partition occurs, a distributed system must choose between consistency and availability.

CAP stands for:
- **Consistency:** Every read receives the most recent successful write or an error.
- **Availability:** Every request receives a non-error response, even if the response may not contain the latest data.
- **Partition Tolerance:** The system continues operating despite communication failures between nodes.

## Understanding CAP
A distributed system can provide consistency and availability when there is no network partition. However, when a partition occurs, it cannot guarantee both simultaneously.

### CP Systems
CP systems prioritize consistency and partition tolerance. They may reject or delay requests when consistency cannot be guaranteed.

Examples include systems configured to require quorum agreement before accepting certain operations.

### AP Systems
AP systems prioritize availability and partition tolerance. They continue responding during a partition but may temporarily return stale data.

Examples include Dynamo-style distributed databases configured for high availability.

## Real-World Example
Imagine a banking application with two database replicas.

If the replicas lose communication, allowing both to accept conflicting balance updates could produce incorrect results. A consistency-focused design may reject some operations until coordination is restored.

A shopping cart, however, might accept updates independently and reconcile them later.

## CAP vs ACID
- CAP addresses trade-offs in distributed systems during network partitions.
- ACID describes transaction properties: Atomicity, Consistency, Isolation, and Durability.

The word consistency has different meanings in these contexts.

## Key Takeaways
- CAP is about behavior during network partitions.
- Partition tolerance is essential when a distributed system must handle network failures.
- Consistency and availability can conflict during a partition.
- System requirements determine the appropriate design.

## Interview Questions
1. What does CAP stand for?
2. Why can't a system guarantee both consistency and availability during a network partition?
3. What is the difference between CP and AP systems?
4. How does CAP differ from ACID?
