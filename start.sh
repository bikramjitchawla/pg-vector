#!/bin/sh 
set -e 

kubectl create ns cnpg-system 
kubectl create ns vector-db

sleep 30s

echo "applying manifests."
kubectl apply -f 01-cnpg-operator.yaml
kubectl apply -f cnpf-operator.yaml
kubectl apply -f pgvector-cluster.yaml
