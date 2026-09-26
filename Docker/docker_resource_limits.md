# Docker Resource Limits

Containers can consume CPU and memory resources from the host.

## Memory Limit

```bash
docker run --memory="512m" nginx
CPU Limit
docker run --cpus="1.5" nginx
CPU Shares
docker run --cpu-shares=512 nginx
Memory + CPU
docker run \
  --memory="512m" \
  --cpus="1.0" \
  nginx
Check Usage
docker stats
Why Resource Limits Matter

Without limits, a single container may consume excessive resources and affect other workloads.

Production Considerations

Set appropriate:

CPU limits
Memory limits
Restart policies
Health checks
Logging limits
Example
docker run \
  --name api \
  --memory="1g" \
  --cpus="2" \
  --restart=unless-stopped \
  myapi:latest
