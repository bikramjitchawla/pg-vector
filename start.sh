#!/bin/sh 

k create ns cnpg-system 
k create ns vector-db

echo "applying manifests."
kubectl apply -f 01-cnpg-operator.yaml
kubectl apply -f cnpf-operator.yaml
kubectl apply -f pgvector-cluster.yaml
