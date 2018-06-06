#!/bin/bash

set -e
echo "To deploy the demo app, update the aad-pod-identity/deploy/demo/deployment.yaml arguments with \
your subscription, clientID and resource group. \
Make sure your identity with the client ID has reader permission to the resource group provided in the input."

read -p "Press enter to continue"

set -x

kubectl create -f aad-pod-identity/deploy/demo/deployment.yaml