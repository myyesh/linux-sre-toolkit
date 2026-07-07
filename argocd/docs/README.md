# ArgoCD GitOps Module

This module demonstrates GitOps deployment practices using ArgoCD.

## What is GitOps?

GitOps is an operational model where Git acts as the single source of truth for infrastructure and application deployments.

## Workflow

Developer
→ Git Push
→ GitHub Repository
→ ArgoCD Detects Change
→ Kubernetes Cluster Sync
→ Application Updated

## Benefits

- Automated deployments
- Declarative infrastructure
- Version-controlled changes
- Easy rollback capability
- Improved auditability

## Components

- Git Repository
- ArgoCD
- Kubernetes Cluster
- Helm Charts

## Project Usage

ArgoCD will monitor the SRE Ops Platform Helm chart and synchronize deployments automatically.
