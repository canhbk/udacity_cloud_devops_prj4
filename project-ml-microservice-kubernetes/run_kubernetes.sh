#!/usr/bin/env bash
# Step 1:
# This is your Docker ID/path
dockerpath=canhnv/uda_cloud_devops_p4

# Step 2
# Run the Docker Hub container with kubernetes
check=$(kubectl get pod ml-api 2> /dev/null;echo $?)

if [ "$check" == "1" ] ; then
    kubectl run ml-api \
    --image=$dockerpath \
    --image-pull-policy="Always" \
    --overrides='{"apiVersion": "v1", "spec":{"imagePullSecrets": [{"name": "regcred"}]}}'
fi

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward ml-api 8000:80

