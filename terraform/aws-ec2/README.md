# Terraform AWS EC2 Deployment

This module provisions AWS infrastructure for the SRE Ops Platform.

## Resources Created

- EC2 instance
- Security group
- SSH access rule
- HTTP access rule
- Docker bootstrap using EC2 user data

## Commands

Initialize Terraform:

```bash
terraform init
