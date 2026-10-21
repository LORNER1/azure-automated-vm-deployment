#!/bin/bash

# Stop the script if any command fails
set -e 

# Variables
RESOURCE_GROUP="my-auto-rg"
LOCATION="eastus"
VNET_NAME="my-vnet"
SUBNET_NAME="my-subnet"
VM_NAME="my-auto-vm"
IMAGE="Ubuntu2204"
ADMIN_USER="azureuser"

echo "Starting infrastructure deployment..."

# 1. Create a Resource Group
echo "Creating Resource Group: $RESOURCE_GROUP..."
az group create --name $RESOURCE_GROUP --location $LOCATION

# 2. Create a Virtual Network and Subnet
echo "Creating Virtual Network: $VNET_NAME..."
az network vnet create \
  --resource-group $RESOURCE_GROUP \
  --name $VNET_NAME \
  --subnet-name $SUBNET_NAME

# 3. Create a basic Virtual Machine
echo "Creating Virtual Machine: $VM_NAME..."
az vm create \
  --resource-group $RESOURCE_GROUP \
  --name $VM_NAME \
  --image $IMAGE \
  --subnet $SUBNET_NAME \
  --admin-username $ADMIN_USER \
  --generate-ssh-keys

echo "Deployment successful!"
