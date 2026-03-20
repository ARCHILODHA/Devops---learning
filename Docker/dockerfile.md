# Dockerfile Guide

## Basic Example
```dockerfile
FROM node:18

WORKDIR /app

COPY . .

RUN npm install

CMD ["npm", "start"]

BUILD IMAGE
docker build -t myapp .
RUN CONTAINER
docker run -p 3000:3000 myapp
