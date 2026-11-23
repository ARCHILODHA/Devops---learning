
# Contract Testing in CI/CD

## Introduction
Contract testing verifies that two services can communicate according to an agreed interface or contract.

It is especially useful in microservices architectures where services are developed and deployed independently.

## Example

Consider two services:

- Employee Service: Provides employee information.
- Payroll Service: Consumes employee information.

The contract defines the expected request and response structure.

## Example API Contract

```json
{
  "request": {
    "method": "GET",
    "path": "/employees/101"
  },
  "response": {
    "status": 200,
    "body": {
      "id": 101,
      "name": "Rahul",
      "department": "Engineering"
    }
  }
}
