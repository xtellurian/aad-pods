#!/bin/bash

set -e

echo "To give the Azure Id to the cluster, update the deploy/aadpodidentitybinding.yaml spec with \
your binding name from step 3's AzureIdentity, and a pod selector to assign tge Id"

read -p "Press enter to continue"

set -x
kubectl create -f deploy/aadpodidentitybinding.yaml