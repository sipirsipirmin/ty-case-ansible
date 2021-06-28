## app

```
ansible-playbook deploy-nginx-playbook.yaml --inventory-file inventory # only first time

ansible-playbook deploy-app-playbook.yaml --inventory-file inventory
```

## prometheus

```
ansible-playbook prometheus-playbook.yaml --inventory-file inventory
```

## Prometheus installation in k8s cluster

prometheus-values.yaml also in this repo. 

```
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm install prometheus prometheus-community/kube-prometheus-stack -f prometheus-values.yaml
```

