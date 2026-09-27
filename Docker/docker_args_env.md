# Docker ARG and ENV

Docker provides ARG and ENV for handling configuration values.

## ARG

ARG defines build-time variables.

Example:

```dockerfile
FROM node:22

ARG APP_VERSION=1.0

RUN echo "Building version $APP_VERSION"

Build:

docker build \
  --build-arg APP_VERSION=2.0 \
  -t myapp .
ENV

ENV defines environment variables available inside the container.

Example:

FROM node:22

ENV NODE_ENV=production

WORKDIR /app
Difference
ARG	ENV
Build-time	Runtime
Available during build	Available in container
Not automatically available after build	Available to application
Used for build configuration	Used for application configuration
Runtime Environment Variable
docker run \
  -e NODE_ENV=production \
  myapp
View Environment Variables
docker exec container-name env
Important

Do not use ENV or ARG for sensitive credentials.

Avoid:

ENV PASSWORD=secret123

Use a proper secret-management solution instead.
