# Database Indexing

## Overview
Database indexing is a technique used to speed up data retrieval. An index helps a database locate rows without scanning an entire table.

Indexes improve read performance but require additional storage and can slow down inserts, updates, and deletes.

## Why Indexing Is Important
Consider an employee table containing one million records.

Without an appropriate index, searching for an employee by email may require scanning many rows.

With an index on the email column, the database can locate matching records much more efficiently.

## Common Types of Indexes

### 1. Primary Index
A primary key uniquely identifies each row. Databases commonly create an index to enforce primary-key uniqueness.

### 2. Unique Index
A unique index prevents duplicate indexed values, subject to the database's NULL-handling rules.

### 3. Composite Index
A composite index contains multiple columns.

Example:
```sql
CREATE INDEX idx_employee_department_name
ON employees (department_id, name);
