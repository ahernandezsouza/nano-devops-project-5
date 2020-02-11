#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

#Step 0:
#Delete Kubernetes Objects
kubectl delete deployment udacityapp
kubectl delete service udacityapp

# Step 1:
# This is your Docker ID/path
dockerpath=jjahs/udacityapp:latest

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run udacityapp --generator=run-pod/v1 --image=docker.io/$dockerpath --port=80 --labels app=udacityapp

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward udacityapp 8000:80
