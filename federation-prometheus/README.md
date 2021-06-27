## Kubernetes Clusters

k8s-prometheus-values.yaml file is configuration file of prometheus which is running on kubernetes cluster. This configuration file allows to configure prometheus alerting rules etc. Look at `https://github.com/prometheus-community/helm-charts/blob/main/charts/kube-prometheus-stack/values.yaml` for configurable values.
### Helm Repo

`helm repo add prometheus-community https://prometheus-community.github.io/helm-charts`

### Example of Installation

`helm install prometheus-test prometheus-community/kube-prometheus-stack -n monitoring --set operator.service.type=LoadBalancer --set operator.service.annotations="cloud\.google\.com/load-balancer-type: \"Internal\""`
### Upgrade

`helm upgrade prometheus-test prometheus-community/kube-prometheus-stack -n monitoring  --set operator.service.type=LoadBalancer --set prometheus.service.type=LoadBalancer --set prometheus.service.annotations."cloud\.google\.com\/load\-balancer\-type"=Internal -f k8s-prometheus-values.yaml --reuse-values --recreate-pods`
## GCE Instances 

### Sources

Node exporter: https://github.com/cloudalchemy/ansible-node-exporter


Prometheus: https://github.com/cloudalchemy/ansible-prometheus

### Node Exporter Installation

`ansible-playbook node-exporter-playbook.yaml --inventory-file inventory`

### Prometheus Server Installation

`ansible-playbook prometheus-playbook.yaml --inventory-file inventory`

### Prometheus Configure

`ansible-playbook prometheus-playbook.yaml --inventory-file inventory  --tags "prometheus_configure"`

### AlertManager Insallation

`ansible-playbook alertmanager-playbook.yaml --inventory-file inventory`

### AlertManager Configure

`ansible-playbook alertmanager-playbook.yaml --inventory-file inventory --tags "prometheus_configure"`