# Rollback Strategy in CI/CD

## Purpose
Revert to previous stable version

## Methods
- Redeploy previous build
- Use version tagging

## Example
```bash
git checkout <previous_commit>
