#!/bin/bash

echo -e "\n***************************\n"

echo -e "Pods JsonPath Examples"

echo -e "\n===========================\n"

kubectl get po -o jsonpath='{.items[*].metadata.name}{"\n"}'

echo -e "\n===========================\n"

kubectl get po -o jsonpath='{.items[*].metadata.name}{"\n"}{.items[*].status.podIP}{"\n"}'

echo -e "\n===========================\n"

kubectl get po -o 'custom-columns=PodName:.metadata.name,PodIP:.status.podIP'

echo -e "\n===========================\n"

kubectl get pod -o jsonpath-as-json='{.items[*].metadata.name}{.items[*].status.podIP}'

echo -e "\n***************************\n"

echo -e "SVC JsonPath Examples"


