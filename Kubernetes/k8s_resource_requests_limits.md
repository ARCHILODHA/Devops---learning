
# Kubernetes Resource Requests and Limits

Kubernetes allows you to control how much CPU and memory a container can request and consume.

## Requests

A request specifies the minimum amount of resources required by a container.

Example:

```yaml
resources:
  requests:
    cpu: "250m"
    memory: "128Mi"
