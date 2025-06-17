# Rocket.Chat App
A Helm chart for Complete Rocket.Chat ITaaS deployment

## Requirements
kubernetes cluster with additions below:
1. helm installed

2. mongodb-community-operator (CRD)
```bash
# Add MongoDB Helm charts repo
helm repo add mongodb https://mongodb.github.io/helm-charts
helm repo update

# Optionally create a dedicated namespace
kubectl create namespace mongodb-operator

# Install the Community Operator, watching all namespaces
helm install community-operator mongodb/community-operator \
  --namespace mongodb-operator \
  --set operator.watchNamespace="*"
```

3. config map for mongodb secret:
```bash
kubectl create secret generic admin-user \
  --namespace rocketchat-system \
  --from-literal=password='AdminStrongP@ssword'
```
## How to run
```bash
helm dep build
helm install --namespace=rocketchat-system rktchatapp ./ 
```