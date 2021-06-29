# tycase-tool

## Amaç

- Credential bilgisi belirtilen kubernetes clusterlarında bulunan servislerden,  default olarak, `hayde.trendyol.io/enabled=true` annotationı
bulunan servisler elde edilmesi. 
- Bu servisler için nginx konfigürasyonlarının oluşturulması.

## Kurulum

```
ansible-playbook deploy-app-playbook.yaml --inventory-file inventory
```

* Geliştirilen araca dair detaylı bilgi, aracın kaynak kodunun bulunduğu https://github.com/sipirsipirmin/tycase repoda bulunmaktadır.