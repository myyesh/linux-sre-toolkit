k# GitHub Actions CI

## Overview

The SRE Ops Platform uses GitHub Actions to automatically validate code changes before they are merged.

The CI pipeline helps ensure that shell scripts, Terraform configurations, and Docker images remain functional and deployable.

## Workflow Location

```text
.github/workflows/ci.yml
```

## Current CI Checks

### Shell Script Validation

The pipeline validates the syntax of operational scripts used throughout the project.

Validated scripts include:

* log_monitor.sh
* check_all_logs.sh
* system_health.sh
* deploy_site.sh
* validate_nginx.sh
* check_site.sh

### Executable Permission Checks

The workflow verifies that required scripts have executable permissions.

### Terraform Validation

Terraform configurations are validated before deployment.

Checks performed:

* terraform init
* terraform fmt
* terraform validate

Location:

```text
terraform/aws-ec2
```

### Docker Validation

The workflow builds the Docker image for the static website deployment.

Validation includes:

* Docker image build
* Container startup
* Website accessibility test

The site is tested using a local container health check.

## Benefits

This CI pipeline provides:

* Automated code validation
* Infrastructure as Code verification
* Docker build testing
* Early detection of configuration errors
* Consistent deployment standards

## Trigger Events

The workflow runs automatically when:

* Code is pushed to the main branch
* A pull request is created

## Outcome

The GitHub Actions workflow ensures that application code, infrastructure code, and deployment artifacts are continuously validated before changes are merged into the primary codebase.

