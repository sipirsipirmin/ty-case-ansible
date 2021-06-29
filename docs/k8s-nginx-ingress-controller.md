# Nginx Ingress Controller Kurulumu

```
kubectl apply -f https://raw.githubusercontent.com/sipirsipirmin/nginx-ingress-with-hostnetwork/master/deploy.yaml
```

Yukarıdaki komut ile kurulum yapılmıştır. Ilgili yaml aslında `https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v0.47.0/deploy/static/provider/baremetal/deploy.yaml` dan kopyalanmış ancak (prometheus'un 80 portundan servis verebilmesi için) controller-deployment' a `hostNetwork: true` eklenmiştir.

