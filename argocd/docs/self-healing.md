# ArgoCD Self-Healing Demo

This demo shows how ArgoCD detects and corrects manual drift in a Kubernetes cluster.

## Desired State

The desired replica count is defined in the Helm values file:

```yaml
replicaCount: 3
```

ArgoCD watches the Git repository and syncs the Helm chart into the Kubernetes cluster.

## Manual Drift Test

A manual change was made directly to the cluster:

```bash
kubectl scale deployment sre-ops-platform-deployment --replicas=1 -n sre-ops
```

## ArgoCD Response

ArgoCD detected that the live cluster no longer matched Git.

It automatically reconciled the application back to the desired state.

## Verification

```bash
kubectl get deployment -n sre-ops
```

Expected result:

```text
READY 3/3
```

## Key Concept

ArgoCD self-healing ensures that Kubernetes resources remain aligned with the Git-defined desired state.
