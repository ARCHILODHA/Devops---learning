# Kubernetes Jobs

## What is a Job?
A Job in Kubernetes runs a task until completion.

## Example
```yaml
apiVersion: batch/v1
kind: Job
metadata:
  name: sample-job
spec:
  template:
    spec:
      containers:
      - name: job
        image: busybox
        command: ["echo", "Hello Kubernetes"]
      restartPolicy: Never
