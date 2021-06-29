# K8s cluster'ının kurulumu


Inventory dosyası güncellendikten sonra aşağıdaki gibi çalıştırılabilir.

```
ansible-playbook install-k8s-cluster.yaml --inventory-file inventory
```

### Bilinen eksik noktalar;

- Token, vaultlanabilir veya rasgele oluşturulabilir
- Ansible her çalıştırıldığında tüm adımlar tekrar çalışmaktadır. Tag eklenerek bu durum çözülmelidir.
- Ansible' ın tamamının her seferinde çalışmasından da kaynaklanarak, örnek olarak, eğer worker makinalarında `kubeadm join ...`
çalıştığında, önceki çalışmasından dolayı oluşan konfigürasyon dosyaları hata oluşturmaktadır. İlgili makinada `kubeadm reset`  çalıştırlması gerekmmektedir.

## Kaynakça

- https://kubernetes.io/docs/setup/production-environment/tools/kubeadm/install-kubeadm/

