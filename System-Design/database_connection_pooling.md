
### 3. `database_connection_pooling.md`

```markdown
# Database Connection Pooling

## Overview
Database connection pooling is a technique in which an application reuses a managed collection of database connections instead of creating a new connection for every request.

Establishing a database connection involves overhead. Pooling reduces repeated connection creation and helps control database resource usage.

## How It Works
1. The application starts and initializes a connection pool.
2. A request needs database access.
3. The application borrows an available connection.
4. The application executes its database operations.
5. The connection is returned to the pool.
6. Another request can reuse it.

Connections should be returned even when operations fail. In Java, try-with-resources is useful for safely closing connection handles.

## Architecture
```text
Client Request
      |
      v
Application Server
      |
      v
Connection Pool
      |
      v
Database Server
