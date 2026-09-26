# Kubernetes Deployments

A Kubernetes Deployment manages a set of replicated Pods.

## Basic Deployment

```yaml
apiVersion: apps/v1
kind: Deployment

metadata:
  name: nginx-deployment

spec:
  replicas: 3

  selector:
    matchLabels:
      app: nginx

  template:
    metadata:
      labels:
        app: nginx

    spec:
      containers:
        - name: nginx
          image: nginx:latest
          ports:
            - containerPort: 80
Apply
kubectl apply -f deployment.yaml
View Deployment
kubectl get deployments
View Pods
kubectl get pods
Scale
kubectl scale deployment nginx-deployment --replicas=5
Update Image
kubectl set image deployment/nginx-deployment \
  nginx=nginx:1.27
Rollout Status
kubectl rollout status deployment/nginx-deployment
Rollback
kubectl rollout undo deployment/nginx-deployment
Deployment Flow
Deployment
    ↓
ReplicaSet
    ↓
Pods
    ↓
Containers
