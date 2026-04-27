# Docker Healthcheck

Used to check container health status.

## Example
```dockerfile
HEALTHCHECK CMD curl --fail http://localhost:3000 || exit 1
