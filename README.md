# README

Kullanılan/oluşturulan ansible ve helm repolarına dair bilgiler `docs/`dizini altında ayrı ayrı bulunmaktadır.

## Kurulum

````
ansible-playbook install.yaml -e "service_key=<pagerduty_key>"  --inventory-file inventory
````

Yukarıdaki komut verildiğinde, k8s cluster'ı, flannel, nginx ingress, prometheus(federation prom. dahil), consul agent/server, tycase-tool(ve nginx'i), gitlab ve prometheus alertmanager kurulmaktadır.