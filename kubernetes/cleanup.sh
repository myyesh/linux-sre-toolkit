#!/bin/bash

echo "===== KUBERNETES CLEANUP ====="

echo "Deleting Kubernetes resources from sre-ops namespace..."

kubectl delete -f kubernetes/manifests/

echo ""
echo "Cleanup command executed."
