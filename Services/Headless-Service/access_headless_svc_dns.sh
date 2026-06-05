#! /bin/bash

kubectl run -it \
  --restart=Never \
  --image=busybox busybox \
  -- nslookup mysql-sts-0.mysql-headless-svc.default.svc.cluster.local

#kubectl delete po busybox
