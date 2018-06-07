#!/bin/bash

set -e

echo "To give the Azure Id to the cluster, update the deploy/aadpodidentity.yaml spec with \
your subscription, clientID, resource group, and type (0=Azure Id, 1=Service Principal). "

read -p "Press enter to continue"

set -x

kubectl create -f deploy/aadpodidentity.yaml