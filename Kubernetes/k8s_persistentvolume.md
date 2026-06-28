# Kubernetes Persistent Volume (PV)

## What is a Persistent Volume?
A Persistent Volume (PV) is storage in a Kubernetes cluster that exists independently of Pods.

## Benefits
- Data persists after Pod deletion
- Supports shared storage
- Managed by cluster admin

## PV Lifecycle
1. Provision
2. Bind
3. Use
4. Release
5. Reclaim

## Commands

Create PV
```bash
kubectl apply -f pv.yaml
```

View PVs
```bash
kubectl get pv
```
