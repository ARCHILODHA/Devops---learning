# Parallel Jobs in CI/CD

## Why?
Reduce pipeline execution time.

## Example (GitHub Actions)
```yaml
jobs:
  build:
  test:
Benefit
Faster feedback
Better efficiency


---

## ➕ `secrets_handling.md`
```markdown
# Secrets Handling in CI/CD

## Never do:
- Hardcode passwords

## Use:
- GitHub Secrets
- AWS Secrets Manager

## Example
```yaml
env:
  API_KEY: ${{ secrets.API_KEY }}


---

# ☁️ AWS (MODERN + USEFUL)

## ➕ `aws_eks.md`
```markdown
# AWS EKS (Elastic Kubernetes Service)

Managed Kubernetes service.

## Benefits
- No control plane management
- Auto scaling

## Use Case
Deploy containerized apps
