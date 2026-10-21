# Azure Automated Infrastructure Script

## Overview
This project uses a Bash script and the Azure CLI to automatically provision a Resource Group, a Virtual Network, and a basic Virtual Machine in Microsoft Azure.

## Why it works (and saves time!)
Instead of manually clicking through the Azure Web Portal to configure networking, firewalls, and server settings step-by-step, this script automates the entire infrastructure setup. This approach:
- **Saves time:** Deploys a standardized environment in minutes.
- **Reduces human error:** Ensures configurations are identical every time the script is run.
- **Enables version control:** Infrastructure changes are tracked via Git.

## How to Run
1. Log in to Azure: `az login`
2. Run the script: `./deploy.sh`
