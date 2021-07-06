# Prometheus(Fedaration case)


Ansible https://github.com/prometheus-community dan alınmış ve konfigürasyonlarla özelleştirilmiştir.

Service discovery için;

```
  - consul_sd_configs:
    - server: localhost:8500
    honor_labels: true
    job_name: node-exporter
    scrape_interval: 15s

```

Şeklinde bir konfigürasyon prometheus.yaml a eklenerek consule register olan servisler için discovery yapılmıştır.

