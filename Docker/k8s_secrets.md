# Kubernetes Secrets

## What is a Secret?

Kubernetes Secrets are designed to store sensitive information such as:

- Passwords
- API keys
- Tokens
- TLS certificates
- Database credentials

## Create Secret

```bash
kubectl create secret generic db-secret \
  --from-literal=username=admin \
  --from-literal=password=myPassword
List Secrets
kubectl get secrets
Describe Secret
kubectl describe secret db-secret
YAML Example
apiVersion: v1
kind: Secret

metadata:
  name: db-secret

type: Opaque

stringData:
  username: admin
  password: myPassword

Apply:

kubectl apply -f secret.yaml
Use Secret in Pod
env:
  - name: DB_USERNAME
    valueFrom:
      secretKeyRef:
        name: db-secret
        key: username

  - name: DB_PASSWORD
    valueFrom:
      secretKeyRef:
        name: db-secret
        key: password
Important Security Notes

Kubernetes Secrets are not a replacement for a dedicated production secret-management system.

For production consider:

AWS Secrets Manager
HashiCorp Vault
External Secrets Operator
Cloud provider secret-management services

Never commit real credentials to GitHub.
