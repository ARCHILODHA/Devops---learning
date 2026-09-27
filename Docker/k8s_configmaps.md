# Kubernetes ConfigMaps

## What is a ConfigMap?

A ConfigMap stores non-sensitive configuration data separately from application code.

Examples:

- Application mode
- API URLs
- Port numbers
- Feature flags
- Configuration files

## Create ConfigMap

```bash
kubectl create configmap app-config \
  --from-literal=APP_ENV=production
View ConfigMaps
kubectl get configmaps
Describe ConfigMap
kubectl describe configmap app-config
YAML Example
apiVersion: v1
kind: ConfigMap

metadata:
  name: app-config

data:
  APP_ENV: production
  APP_PORT: "8080"

Apply:

kubectl apply -f configmap.yaml
Use as Environment Variables
env:
  - name: APP_ENV
    valueFrom:
      configMapKeyRef:
        name: app-config
        key: APP_ENV
Use All Values
envFrom:
  - configMapRef:
      name: app-config
ConfigMap vs Secret
ConfigMap	Secret
Non-sensitive configuration	Sensitive data
URLs	Passwords
Feature flags	API keys
Application settings	Tokens
Important

Do not store passwords or private keys in ConfigMaps.
