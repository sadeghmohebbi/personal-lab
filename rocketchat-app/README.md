# Rocket.Chat App
A Helm chart for Complete Rocket.Chat ITaaS deployment

## Requirements
kubernetes cluster with additions below:
- helm
- mongodb-community-operator (CRD)

## How to run
```bash
helm dep build
helm install rktchatapp ./
```