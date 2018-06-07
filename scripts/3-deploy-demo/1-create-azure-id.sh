#!/bin/bash

set -e

set -x



# az identity create --name podId --resource-group $RG

# had to create the identity in the generated RG
# https://github.com/Azure/aad-pod-identity/issues/38
# you will need to replace the resource group below with the correct name
# you may need to look in the Azure Portal to find the correct name
# or you can use the CLI with something like 
# $az group list | grep 'k8s'

az identity create --name podId --resource-group MC_k8s-test_clusterFrank_eastus