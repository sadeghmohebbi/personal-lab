#!/bin/bash
set -x
minikube kubectl -- create secret generic kuard-tls --from-file=kuard.crt --from-file=kuard.key
