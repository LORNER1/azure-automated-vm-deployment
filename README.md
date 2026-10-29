# Azure Automated Infrastructure Script

## Overview & Resources Created
This project uses a Bash script and the Azure CLI to automatically create a:
* Resource Group
* Virtual Network
* And a basic Virtual Machine in Microsoft Azure.

## Prerequisites
You have to have Azure subscription, Azure CLI and Linux Environment ready for:
* Loging into your Azure account.
* Using Automated Infrustructure Script.
* Managing your Resource Groups, Virtual Machines and Networks, Expenses and Usage.

## Functionality
Faster to create a VM in the specific region with the specific VM version. In this project Standard_B2ts_v2 version was used and deployed in Poland Central Region, however it is always possible and easy to change it in deploy.sh file.

## How to Run
1. Log in to Azure: `az login`
2. Run the script: `./deploy.sh`

## How to Edit
1. To edit location of VM deployment - write: `nano deploy.sh`, and look for `LOCATION="polandcentral`. Change the location, if needed. 
2. To edit version of VM deployment - write: `nano deploy.sh`, and look for `--size Standard_B2ts_v2`. Change the version, if needed.
3. Save the file and run the script.

## Clean up
1. Remove specific resource group: `az group delete --name <ResourceGroupName> --yes --no-wait`
