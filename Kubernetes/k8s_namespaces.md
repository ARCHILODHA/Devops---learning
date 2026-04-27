# Kubernetes Namespaces

Namespaces help organize resources in a cluster.

## Use Cases
- Separate environments (dev, prod)
- Multi-team clusters

## Commands
```bash
kubectl create namespace dev
kubectl get namespaces

kubectl apply -f deployment.yaml -n dev


---

## ➕ `k8s_resource_limits.md`
```markdown
# Resource Limits in Kubernetes

Define CPU & Memory usage.

## Example
```yaml
resources:
  requests:
    cpu: "100m"
    memory: "128Mi"
  limits:
    cpu: "500m"
    memory: "512Mi"


---

## ➕ `k8s_liveness_readiness.md`
```markdown
# Liveness & Readiness Probes

## Liveness Probe
Checks if container is alive.

## Readiness Probe
Checks if container is ready to serve traffic.

## Example
```yaml
livenessProbe:
  httpGet:
    path: /
    port: 80


---

## ➕ `k8s_jobs_cronjobs.md`
```markdown
# Jobs & CronJobs

## Job
Runs task once

## CronJob
Runs periodically

## Example
```yaml
apiVersion: batch/v1
kind: CronJob
spec:
  schedule: "*/5 * * * *"


---

## ➕ `k8s_statefulset.md`
```markdown
# StatefulSet

Used for stateful apps (DBs)

## Features
- Stable network identity
- Persistent storage

## Use Cases
- MySQL
- MongoDB
