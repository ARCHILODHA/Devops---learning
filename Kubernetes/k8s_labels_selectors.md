# Kubernetes Labels and Selectors

## Labels

Labels are key-value pairs attached to Kubernetes objects.

Example

```yaml
labels:
  app: nginx
  env: production
```

## Selectors

Selectors identify resources using labels.

Example

```yaml
selector:
  app: nginx
```

## Commands

```bash
kubectl get pods --show-labels
kubectl label pod mypod env=dev
kubectl get pods -l env=dev
```
