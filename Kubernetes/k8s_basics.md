# Kubernetes Basics

## What is Kubernetes?

Kubernetes (K8s) is an **open-source container orchestration platform** used to automate:

* Deployment
* Scaling
* Management of containerized applications

It helps run containers reliably across clusters of machines.

---

# Why Kubernetes?

Problems with running containers manually:

* Difficult to manage many containers
* No automatic scaling
* No self-healing
* Hard to manage networking

Kubernetes solves these by providing:

* Auto scaling
* Load balancing
* Self healing
* Rolling updates
* Service discovery

---

# Kubernetes Architecture

## 1. Master Node (Control Plane)

Responsible for managing the cluster.

Components:

### API Server

* Entry point to Kubernetes cluster
* Handles all REST requests

### Scheduler

* Decides which node runs a new pod

### Controller Manager

* Maintains desired state of the cluster

### etcd

* Distributed key-value database
* Stores cluster data

---

## 2. Worker Node

Worker nodes run application containers.

Components:

### Kubelet

* Agent running on each node
* Ensures containers are running

### Kube Proxy

* Handles networking and load balancing

### Container Runtime

* Runs containers (Docker / containerd)

---

# Kubernetes Key Concepts

## Pod

Smallest deployable unit in Kubernetes.

A pod can contain:

* One container
* Multiple containers

Example:

```
Pod
 ├── Container 1
 └── Container 2
```

---

## Node

A machine in the Kubernetes cluster where pods run.

It can be:

* Physical machine
* Virtual machine

---

## Cluster

A set of nodes managed by Kubernetes.

```
Cluster
 ├── Master Node
 ├── Worker Node
 ├── Worker Node
```

---

## Deployment

Manages pods and ensures the desired number of replicas are running.

Features:

* Rolling updates
* Rollbacks
* Scaling

---

## Service

Exposes pods to network traffic.

Types:

* ClusterIP
* NodePort
* LoadBalancer

---

# Important Kubernetes Commands

## Check cluster info

```
kubectl cluster-info
```

## Get nodes

```
kubectl get nodes
```

## Get pods

```
kubectl get pods
```

## Get pods with more details

```
kubectl get pods -o wide
```

## Create deployment

```
kubectl create deployment nginx --image=nginx
```

## Scale deployment

```
kubectl scale deployment nginx --replicas=3
```

## Expose deployment

```
kubectl expose deployment nginx --type=NodePort --port=80
```

## Delete pod

```
kubectl delete pod pod_name
```

---

# Kubernetes Workflow

Typical flow:

1. Build container image
2. Push image to registry
3. Create deployment
4. Kubernetes schedules pods
5. Service exposes application
6. Users access application

---

# Summary

Kubernetes helps in:

* Managing containers at scale
* Automating deployments
* Load balancing
* Auto healing
* Infrastructure abstraction

