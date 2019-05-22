
helm install --namespace tilloo-services stable/mongodb --name mongodb --set mongodbRootPassword=pAssw0rd1 --set persistence.enabled=false
