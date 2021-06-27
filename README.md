## app

```
ansible-playbook deploy-nginx-playbook.yaml --inventory-file inventory # only first time

ansible-playbook deploy-app-playbook.yaml --inventory-file inventory
```

## prometheus

```
ansible-playbook prometheus-playbook.yaml --inventory-file inventory
```

