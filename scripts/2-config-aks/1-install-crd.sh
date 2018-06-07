#!/bin/bash

set -e
set -x

kubectl create -f aad-pod-identity/crd/azureAssignedIdentityCrd.yaml
kubectl create -f aad-pod-identity/crd/azureIdentityBindingCrd.yaml
kubectl create -f aad-pod-identity/crd/azureIdentityCrd.yaml