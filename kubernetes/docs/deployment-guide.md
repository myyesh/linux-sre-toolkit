# Kubernetes Deployment Guide

This document explains the Kubernetes resources used in the SRE Ops Platform.

## Deployment Resource

File:

```text
kubernetes/manifests/deployment.yaml

## Production-Oriented Configuration

This deployment includes:

- namespace-based resource organization
- ConfigMap-based environment configuration
- readiness probe
- liveness probe
- CPU and memory requests
- CPU and memory limits

## Why Resource Requests and Limits Matter

Requests help Kubernetes decide where to schedule pods.

Limits prevent a container from consuming too many resources and affecting other workloads in the cluster.
