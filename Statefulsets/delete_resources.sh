#!/bin/bash


set -xe
kubectl delete -f . --recursive

echo "Resources Deleted Successfully!!"
#kubectl delete -f headless-svc-definition.yaml
#kubectl delete -f storage-class-definition.yaml
#kubectl delete -f pv-definition.yaml
#kubectl delete -f sts-definition.yaml
