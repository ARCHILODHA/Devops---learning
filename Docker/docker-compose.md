# Docker Compose

## What is Docker Compose?
Tool to run multi-container applications.

## Example docker-compose.yml
```yaml
version: '3'
services:
  web:
    image: nginx
    ports:
      - "80:80"
Commands

docker-compose up
docker-compose down
docker-compose build
