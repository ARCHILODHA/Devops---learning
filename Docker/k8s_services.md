# Kubernetes Services

A Kubernetes Service provides a stable network endpoint for accessing Pods.

## Why Services?

Pods are temporary and their IP addresses can change.

A Service provides:

- Stable IP
- DNS name
- Load balancing
- Service discovery

## ClusterIP

Default service type.

```yaml
apiVersion: v1
kind: Service

metadata:
  name: nginx-service

spec:
  selector:
    app: nginx

  ports:
    - port: 80
      targetPort: 80
NodePort
spec:
  type: NodePort
  ports:
    - port: 80
      targetPort: 80
      nodePort: 30080
LoadBalancer
spec:
  type: LoadBalancer

Cloud providers can provision an external load balancer for this type.

Useful Commands
kubectl get services
kubectl describe service nginx-service
kubectl delete service nginx-service
Service Types
Type	Purpose
ClusterIP	Internal access
NodePort	Expose through node port
LoadBalancer	External load balancer
ExternalName	DNS-based external service
Basic Architecture
Client
  ↓
Service
  ↓
Pod  Pod  Pod
