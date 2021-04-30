# GKE Cluster
Regional GKE cluster with a node pool size of 3. 

# Install ECK 
yaml file - https://www.elastic.co/guide/en/cloud-on-k8s/1.5/k8s-deploy-eck.html

```
$ kubectl apply -f https://download.elastic.co/downloads/eck/1.5.0/all-in-one.yaml
```

# create storage class

yaml file - code/storage-class.yaml

```
$ kubectl get sc
$ kubectl create -f storage-class.yaml
$ kubectl patch storageclass standard -p '{"metadata": {"annotations":{"storageclass.kubernetes.io/is-default-class":"false"}}}'
$ kubectl patch storageclass zone-storage -p '{"metadata": {"annotations":{"storageclass.kubernetes.io/is-default-class":"true"}}}'
```

# deploy ealsticsearch

yaml file - code/<yaml_file.yaml>

