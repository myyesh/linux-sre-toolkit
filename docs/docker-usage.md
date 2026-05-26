## Makefile Commands

This project includes a `Makefile` to simplify Docker workflows.

```bash
make build
make run
make status
make health
make logs
make stop
make clean

# Docker Usage Guide

This document explains how to build and run the static site container for the SRE Ops Platform.

## Build Docker Image

```bash
docker build -t sre-ops-static-site .
