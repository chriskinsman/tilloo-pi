#! /bin/bash
helm install --namespace tilloo-services stable/mongodb --name mongodb --set mongodbRootPassword=pAssw0rd1 --set persistence.enabled=false --set nodeSelector."beta\.kubernetes\.io/arch"=amd64
