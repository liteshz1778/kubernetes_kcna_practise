#!/bin/bash

set -xe
kubectl apply -f . --recursive

echo "Resources Created Successfully!!"
#kubectl apply -f headless-svc-definition.yaml
#kubectl apply -f storage-class-definition.yaml
#kubectl apply -f pv-definition.yaml
#kubectl apply -f sts-definition.yaml
