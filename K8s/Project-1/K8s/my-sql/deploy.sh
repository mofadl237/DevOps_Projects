#!/bin/bash

DATA_PATH="$(pwd)/data"

echo "Checking data directory..."

if [ ! -d "$DATA_PATH" ]; then
  echo "Directory not found. Creating..."
  mkdir -p "$DATA_PATH"
else
  echo "Directory already exists."
fi

sed -i "s|PATH|$DATA_PATH|g" mysql-pv.yaml

echo "Applying Kubernetes resources..."

kubectl apply -f mysql-pv.yaml
kubectl apply -f mysql-pvc.yaml
kubectl apply -f mysql-deployment.yaml
kubectl apply -f mysql-service.yaml

echo "Done."