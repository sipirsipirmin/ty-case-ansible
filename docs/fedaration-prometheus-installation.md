# Prometheus(Fedaration case)


```
ansible-playbook prometheus-playbook.yaml --inventory-file inventory
```

Ansible https://github.com/prometheus-community dan alınmıştır.

Service discovery için;

```
  - consul_sd_configs:
    - server: localhost:8500
    honor_labels: true
    job_name: node-exporter
    scrape_interval: 15s

```

Şeklinde bir konfigürasyon prometheus.yaml a eklenmiştir.

