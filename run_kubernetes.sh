#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=081104062022/project4-prediction

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run anhpham-project4-prediction --image=081104062022/project4-prediction:latest --port=80

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward anhpham-project4-prediction 8080:80

