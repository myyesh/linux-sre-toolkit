#!/bin/bash

echo "===== KUBERNETES DEPLOYMENT ====="

kubectl apply -f kubernetes/manifests/namespace.yaml
kubectl apply -f kubernetes/manifests/configmap.yaml
kubectl apply -f kubernetes/manifests/deployment.yaml
kubectl apply -f kubernetes/manifests/service.yaml

echo ""
echo "Deployment complete."

kubectl get pods -n sre-ops
kubectl get svc -n sre-ops
