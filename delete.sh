#!/bin/bash


echo "deleting the Vault Deployment..."
kubectl delete -f vault/deployment.yaml

echo "deleteing the Vault Service..."
kubectl delete -f vault/service.yaml

kubectl delete configmap vault

echo "deleting the Consul StatefulSet..."
kubectl delete -f consul/statefulset.yaml

echo "deleting the Consul Service..."
kubectl delete -f consul/service.yaml

kubectl delete configmap consul

kubectl delete secrets consul
kubectl delete secrets vault






