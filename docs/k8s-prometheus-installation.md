# Kubernetes cluster'ında Prometheus Kurulumu


prometheus-values.yaml cloudalchemy.prometheus rolunde templates dizininde bulunmak üzere; 

```
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm install prometheus prometheus-community/kube-prometheus-stack -f prometheus-values.yaml
```

Komutları çalıştırılarak prometheus kurulabilmektedir.

## Prometheus'un çalışacağı node'un işaretlenmesi

Prometheus'un çalışması istenilen node `kubectl taint nodes server-tunahan-dursun-1 key=prometheus:NoSchedule`ile işaretlenmiş ve `prometheus-values.yaml` dosyasında ilgili yerlerde `tolerations` 'lar eklenmiştir. 


http://prometheus.sipirsipirmin.com/ adresinden ulaşılabilir.