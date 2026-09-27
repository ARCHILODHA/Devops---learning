# Kubernetes Horizontal Pod Autoscaler

## What is HPA?

Horizontal Pod Autoscaler (HPA) automatically adjusts the number of Pods in a workload based on resource utilization or other metrics.

## Basic Example

```bash
kubectl autoscale deployment myapp \
  --min=2 \
  --max=10 \
  --cpu-percent=70

This configures:

Minimum Pods = 2
Maximum Pods = 10
Target CPU = 70%
View HPA
kubectl get hpa
Detailed Information
kubectl describe hpa myapp
YAML Example
apiVersion: autoscaling/v2
kind: HorizontalPodAutoscaler

metadata:
  name: myapp-hpa

spec:
  scaleTargetRef:
    apiVersion: apps/v1
    kind: Deployment
    name: myapp

  minReplicas: 2
  maxReplicas: 10

  metrics:
    - type: Resource
      resource:
        name: cpu
        target:
          type: Utilization
          averageUtilization: 70
Apply
kubectl apply -f hpa.yaml
Scaling Concept
Low Traffic
    ↓
2 Pods

High Traffic
    ↓
5 Pods

Very High Traffic
    ↓
10 Pods
Benefits
Automatic scaling
Better resource utilization
Handles traffic increases
Reduces manual intervention
Important

For CPU or memory based HPA, Kubernetes needs the relevant resource metrics to be available, commonly through Metrics Server.

HPA changes the number of Pods. It does not automatically increase the size of the underlying nodes.
