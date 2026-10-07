# Kubernetes Health Probes

Kubernetes uses health probes to check whether containers are healthy and ready to receive traffic.

## Types of Probes

### 1. Liveness Probe

Checks whether the application is still running.

If the liveness probe fails repeatedly, Kubernetes can restart the container.

```yaml
livenessProbe:
  httpGet:
    path: /health
    port: 8080
  initialDelaySeconds: 10
  periodSeconds: 10
