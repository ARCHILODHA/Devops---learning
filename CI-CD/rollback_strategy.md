# Rollback Strategy in CI/CD

## Purpose
Revert to previous stable version

## Methods
- Redeploy previous build
- Use version tagging

## Example
```bash
git checkout <previous_commit>


---

## ➕ `artifact_management.md`
```markdown
# Artifact Management

Artifacts = build outputs (jar, docker image)

## Tools
- Nexus
- Artifactory

## Flow
Build → Store → Deploy
