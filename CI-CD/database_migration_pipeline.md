
# Database Migrations in CI/CD

## Introduction
Database migrations manage changes to database structures and sometimes data as an application evolves.

Examples include:
- Creating tables.
- Adding columns.
- Modifying constraints.
- Creating indexes.
- Updating database records.

Database migrations should be managed carefully during automated deployments.

## Common Migration Tools

| Tool | Supported Ecosystem |
|---|---|
| Flyway | Java and multiple databases |
| Liquibase | Database-independent migrations |
| Alembic | Python and SQLAlchemy |
| Prisma Migrate | Prisma applications |

## Flyway Migration Example

Create a migration file:

`V2__create_employee_table.sql`

```sql
CREATE TABLE employee (
    id BIGINT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(150) UNIQUE
);
