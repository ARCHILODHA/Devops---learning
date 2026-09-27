# Kubernetes Ingress

## What is Ingress?

Ingress provides HTTP and HTTPS routing from outside a Kubernetes cluster to services inside the cluster.

## Basic Architecture

```text
Internet
    |
    ↓
Ingress
    |
    +--------+
    |        |
    ↓        ↓
Frontend   Backend
Service    Service
Example
apiVersion: networking.k8s.io/v1
kind: Ingress

metadata:
  name: app-ingress

spec:
  rules:
    - host: example.com
      http:
        paths:
          - path: /
            pathType: Prefix
            backend:
              service:
                name: frontend-service
                port:
                  number: 80
Apply
kubectl apply -f ingress.yaml
View Ingress
kubectl get ingress
Describe
kubectl describe ingress app-ingress
Path-Based Routing

Example:

example.com/
      ↓
Frontend

example.com/api
      ↓
Backend
Host-Based Routing
app.example.com
      ↓
Frontend

api.example.com
      ↓
Backend
Important

An Ingress resource requires an Ingress Controller such as:

NGINX Ingress Controller
AWS Load Balancer Controller
Traefik

Ingress is commonly used for HTTP/HTTPS traffic management.



