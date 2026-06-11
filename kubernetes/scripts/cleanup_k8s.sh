#!/bin/bash

echo "===== KUBERNETES CLEANUP ====="

kubectl delete -f kubernetes/manifests/service.yaml --ignore-not-found
kubectl delete -f kubernetes/manifests/deployment.yaml --ignore-not-found
kubectl delete -f kubernetes/manifests/configmap.yaml --ignore-not-found
kubectl delete -f kubernetes/manifests/namespace.yaml --ignore-not-found

echo "Cleanup complete."
