#!/bin/bash

kubectl apply -f . --recursive
echo;

INGRESS_NODEPORT=$(kubectl get svc -n ingress-nginx ingress-nginx-controller -o json | jq '.spec.ports[0].nodePort')
echo "Configured Ingress Port is: ${INGRESS_NODEPORT}"
echo;

echo "Hitting Httpd WebServer Application!!"
echo;
for i in $(seq 1 20); do curl -s http://127.0.0.1:${INGRESS_NODEPORT}/ -H "Host: my-demo-svc.com"  | grep "Httpd WebServer Application"; done
