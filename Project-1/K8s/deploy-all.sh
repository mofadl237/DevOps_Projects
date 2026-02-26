#!/bin/bash

DATA_PATH_SQL="$(pwd)/data"
DATA_PATH_WP="$(pwd)/data-wordpress"

echo "Checking data directory..."

for DIR in "$DATA_PATH_SQL" "$DATA_PATH_WP"
do
  if [ ! -d "$DIR" ]; then
    echo "Directory $DIR not found. Creating..."
    mkdir -p "$DIR"
  else
    echo "Directory $DIR already exists."
  fi
done

sed -i "s|PATH|$DATA_PATH_SQL|g" my-sql/mysql-pv.yaml
sed -i "s|PATH|$DATA_PATH_WP|g" WordPress/pv.yaml

echo "Applying Kubernetes resources..."

kubectl apply -f my-sql/
kubectl apply -f WordPress/

echo "Done."