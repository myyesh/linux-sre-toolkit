# Kubernetes Commands Guide

This document lists common kubectl commands for deploying and inspecting the SRE Ops Platform Kubernetes manifests.

## Apply Manifests

```bash
kubectl apply -f kubernetes/manifests/configmap.yaml
kubectl apply -f kubernetes/manifests/deployment.yaml
kubectl apply -f kubernetes/manifests/service.yaml

Or apply all manifests:

kubectl apply -f kubernetes/manifests/
Check Resources
kubectl get pods
kubectl get deployments
kubectl get services
kubectl get configmaps
Inspect Deployment
kubectl describe deployment sre-ops-site-deployment
Inspect Service
kubectl describe service sre-ops-site-service
View Pod Logs
kubectl logs -l app=sre-ops-site
Delete Resources
kubectl delete -f kubernetes/manifests/
Local Access

For NodePort service:

http://localhost:30080

depending on local Kubernetes environment.
