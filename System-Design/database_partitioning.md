
# Database Partitioning

## Overview
Database partitioning divides a large table into smaller logical or physical sections called partitions.

Partitioning can improve manageability and query performance when the database engine can eliminate partitions that are irrelevant to a query.

Partitioning is different from sharding: partitioning usually divides data within a database system, while sharding distributes data across separate database instances or nodes.

## Why Partitioning Is Used
- Manage very large tables.
- Improve maintenance operations.
- Remove old data more efficiently.
- Reduce the amount of data scanned by suitable queries.
- Organize records by a meaningful key.

## Common Partitioning Strategies

### 1. Range Partitioning
Rows are assigned to partitions based on ranges of values.

Example: partition sales records by year.

### 2. List Partitioning
Rows are assigned according to a predefined list of values.

Example: partition records by region.

### 3. Hash Partitioning
A hash function determines which partition receives a row.

This can distribute records across partitions based on a chosen key.

### 4. Composite Partitioning
Combines strategies, such as range partitioning followed by hash partitioning.

## Example: Range Partitioning in MySQL
The following example assumes a table partitioned by a date column.

```sql
CREATE TABLE sales (
    sale_id BIGINT NOT NULL,
    sale_date DATE NOT NULL,
    amount DECIMAL(10, 2),
    PRIMARY KEY (sale_id, sale_date)
)
PARTITION BY RANGE COLUMNS (sale_date) (
    PARTITION p2026 VALUES LESS THAN ('2027-01-01'),
    PARTITION p2027 VALUES LESS THAN ('2028-01-01'),
    PARTITION p_future VALUES LESS THAN (MAXVALUE)
);
