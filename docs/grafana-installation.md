# Grafana Kurulumu

Kubernetes cluster'ında Prometheus ait helm'in values'unda `grafana: true` şeklinde tanımlama yaparak, grafana'nın kurulumu sağlanmıştır.

Data source, varsayılan olarak ilgili clusterda bulunan Prometheus'u içermektedir.

Grafana'da bulunan dashboard ise https://grafana.com/grafana/dashboards/10000 import edilerek oluşturulmuştur.

http://grafana.sipirsipirmin.com/ adresinden ulaşılabilir.