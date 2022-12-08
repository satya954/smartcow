This directory contains minikube installations

After Installing minikube and start it.
Deploy pod1 and pod2.
In both folders, we are having deploy.yaml and service.yaml files.

kubectl create -f deploy.yaml
kubectl create -f service.yaml

Both those services are having nodeports 30000 and 30001.
