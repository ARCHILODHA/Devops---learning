# Docker Security

## Best Practices
- Use minimal base images
- Avoid root user
- Scan images

## Example
```dockerfile
USER node


---

## ➕ `docker_healthcheck.md`
```markdown
# Docker Health Check

## Example
```dockerfile
HEALTHCHECK CMD curl --fail http://localhost:3000 || exit 1


---

# ☸️ Kubernetes (NEXT LEVEL)

## ➕ `k8s_rbac.md`
```markdown
# RBAC in Kubernetes

Role-Based Access Control

## Components
- Role
- RoleBinding
- ServiceAccount

## Example
```yaml
kind: Role


---

## ➕ `k8s_network_policies.md`
```markdown
# Network Policies

Control pod-to-pod communication.

## Use Case
- Restrict traffic
- Improve security
