#!/bin/bash


set -xe
kubectl delete statefulset mongo-app
kubectl delete svc mongo-svc
kubectl delete pvc --all
kubectl delete pv --all
kubectl delete sc mongo-sc


echo "Resources Deleted Successfully!!"
