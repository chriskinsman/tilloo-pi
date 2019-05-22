#! /bin/bash

# MetalLB
kubectl delete -f metallb-config.yaml
kubectl delete -f https://raw.githubusercontent.com/google/metallb/v0.7.3/manifests/metallb.yaml

# nginx
kubectl delete -f nginx.yaml
kubectl delete -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/master/deploy/mandatory.yaml

# mongodb
helm delete --purge mongodb

# tilloo
kubectl delete -f tilloo.yaml
kubectl delete -f tilloo-namespaces.yaml
