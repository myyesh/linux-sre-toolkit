#!/bin/bash

echo "===== KUBERNETES HEALTH CHECK ====="

echo ""
echo "Pods:"
kubectl get pods -n sre-ops

echo ""
echo "Services:"
kubectl get svc -n sre-ops

echo ""
echo "Deployments:"
kubectl get deployments -n sre-ops

