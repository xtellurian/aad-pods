#!/bin/bash

set -e
set -x

kubectl create -f aad-pod-identity/deploy/infra/deployment.yaml