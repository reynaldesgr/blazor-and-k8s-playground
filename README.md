# K8s (Kubernetes)
Kubernetes is an open-source platform designed to automate the deployment, scaling & operations of containerized applications.
- **Container orchestration**
- **Scaling**
- **Load balancing**
- **Self-healing**
- **Rolling updates & Rollbacks**
  
![image](https://github.com/user-attachments/assets/538b4dad-bd23-4c9b-b377-3a825bc99095)

## Minikube
Minikube is an open-source tool that enables to runn a single-node Kubernetes (both master & worker) on your local machine.

- **Single-Node Cluster**: Minikube runs a single-node Kubernetes cluster inside a virtual machine (VM) or container on your local machine. This node acts as both the master and worker node.
  
- **VM/Container Runtime**: Minikube supports various VM drivers (like VirtualBox, VMware, Hyper-V) and container runtimes (like Docker, containerd).
  
- `kubectl`: Minikube works with kubectl, the Kubernetes command-line tool, allowing you to manage your local cluster just like you would manage a full-scale cluster.

```sh
# Start
minikube start

# Stop
minikube stop

# Delete minikube cluster
minikube delete

# Cluster status
minikube status
```
### Cluster management 

```sh
# View cluster info
kubectl cluster-info

# View nodes
kubectl get nodes

# SSH into Minikube VM
minikube ssh (driver == docker) else : ssh docker@ip-minikube
```

### Networking
```sh
# View cluster services
kubectl get services

# Expose a service
kubectl expose deployment <deployment-name> --type=NodePort --port=8080

# Access Minikube IP
minikube ip

# Access Service via NodePort
minikube service <service-name>
```
