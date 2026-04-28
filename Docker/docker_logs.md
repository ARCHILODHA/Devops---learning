# Docker Logs

## Command
```bash
docker logs <container_id>

docker logs -f <container_id>


---

## ➕ `docker_restart_policies.md`
```markdown
# Restart Policies

## Types
- no
- always
- on-failure

## Example
```bash
docker run --restart=always nginx


---

# ☸️ Kubernetes (INTERVIEW LEVEL)

## ➕ `k8s_liveness_readiness.md`
```markdown
# Liveness vs Readiness Probe

## Liveness
Checks if container is alive

## Readiness
Checks if container is ready to serve traffic

## Example
```yaml
livenessProbe:
  httpGet:
    path: /
    port: 80


---

## ➕ `k8s_jobs_cronjobs.md`
```markdown
# Jobs & CronJobs

## Job
Runs once

## CronJob
Runs on schedule

## Example
```yaml
schedule: "*/5 * * * *"


---

# 🐧 Linux (ADVANCED USAGE)

## ➕ `log_rotation.md`
```markdown
# Log Rotation

## Tool
logrotate

## Purpose
- Prevent large log files

## Config Example
```bash
/var/log/app.log {
    daily
    rotate 7
}


---

## ➕ `disk_partitioning.md`
```markdown
# Disk Partitioning

## Commands
- fdisk
- lsblk

## Use Case
Manage storage efficiently
