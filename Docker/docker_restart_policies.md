# Docker Restart Policies

Docker restart policies control what happens when a container stops.

## Common Policies

### no

Default behavior.

```bash
docker run --restart=no nginx
always

Docker always attempts to restart the container.

docker run --restart=always nginx
unless-stopped

Restarts the container unless it was manually stopped.

docker run --restart=unless-stopped nginx
on-failure

Restarts only when the container exits with a non-zero status.

docker run \
  --restart=on-failure:5 \
  myapp

The container can be restarted up to 5 times.

Example
docker run \
  -d \
  --name backend \
  --restart=unless-stopped \
  myapp:latest
Check Configuration
docker inspect backend
Recommended Use

For long-running services:

Production API
      ↓
restart=unless-stopped

For jobs:

Batch Job
   ↓
restart=on-failure
Important

Restart policies do not replace proper application monitoring and health checks.
