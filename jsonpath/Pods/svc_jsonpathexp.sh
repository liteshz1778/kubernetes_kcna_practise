#!/bin/bash

echo -e "\n***************************\n"

echo -e "SVC JsonPath Examples"

echo -e "\n===========================\n"

kubectl get svc -o jsonpath='{.items[*].metadata.name}'

echo -e "\n===========================\n"

kubectl get svc -o 'custom-columns=SVC-Name:.metadata.name, SVC-NodePort:.spec.ports[*].nodePort'

echo -e "\n***************************\n"

kubectl get svc -o jsonpath='{range .items[?(@.metadata.name != "kubernetes")]}{.metadata.name}{" ---> "}{.spec.ports[*].nodePort}{"\n"}{end}{"\n"}'

echo -e "\n***************************\n"

kubectl get svc --sort-by=.spec.ports[*].nodePort

echo -e "\n***************************\n"

kubectl get svc -o jsonpath='{range .items[?(@.spec.type == "NodePort")]}{.metadata.name}{"."}{.metadata.namespace}{"."}{"svc.cluster.local"}{"\n"}{end}'

echo -e "\n***************************\n"

