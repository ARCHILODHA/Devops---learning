# Kubernetes Taints and Tolerations

## Taints

Prevent Pods from being scheduled onto specific nodes.

Example

```bash
kubectl taint nodes worker1 key=value:NoSchedule
```

## Tolerations

Allow Pods to be scheduled on tainted nodes.

Example

```yaml
tolerations:
- key: "key"
  operator: "Equal"
  value: "value"
  effect: "NoSchedule"
```

## View Taints

```bash
kubectl describe node <node-name>
```
