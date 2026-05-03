#!/bin/bash

DATA_PATH="$(pwd)/data-wordpress"

echo "Checking data directory..."

if [ ! -d "$DATA_PATH" ]; then
  echo "Directory not found. Creating..."
  mkdir -p "$DATA_PATH"
else
  echo "Directory already exists."
fi

sed -i "s|PATH|$DATA_PATH|g" pv.yaml

echo "Applying Kubernetes resources..."

kubectl apply -f pv.yaml
kubectl apply -f pvc.yaml
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml

echo "Done."