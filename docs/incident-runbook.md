# Incident Runbook

This runbook documents basic operational troubleshooting workflows practiced in this project.

## Scenario: Static Site Is Not Reachable

### 1. Check Nginx Status

```bash
sudo systemctl status nginx --no-pager
