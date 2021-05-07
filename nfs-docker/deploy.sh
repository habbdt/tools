#!/bin/bash

# create storage class
kubectl apply -f k8s-manifest/storage-class.yaml 
kubectl patch storageclass standard -p '{"metadata": {"annotations":{"storageclass.kubernetes.io/is-default-class":"false"}}}'
kubectl patch storageclass zone-storage -p '{"metadata": {"annotations":{"storageclass.kubernetes.io/is-default-class":"true"}}}'

# create nfs server
kubectl apply -f k8s-manifest/nfs.yaml