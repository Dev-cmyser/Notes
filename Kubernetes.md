[[Backend]]
Для публикации создаем репозиторий в докерхаб codovstvo/namerepo

Собираем докер образ docker build -t codovstvo/namerepo .

пушим образ в докерхаб с названием версии корторой еще небыло docker push keshox/namerepo:1

В конфиге кубернетеса ставим название образа с указанием версии image : keshox/namerepo:1

Обновляем конфиг командой kubectl.exe apply -f .\namerepo.yaml

Смотрим в Lens отчет о деплое

Пример файла конфигурации

```javascript
apiVersion: apps/v1
kind: Deployment
metadata:
  name: gateway
  namespace: default
spec:
  replicas: 3
  selector:
    matchLabels:
      app: gateway
  template:
    metadata:
      labels:
        app: gateway
    spec:
      containers:
        - name: gateway
          image: keshox/gateway:3
          ports:
            - containerPort: 80

---
apiVersion: v1
kind: Service
metadata:
  namespace: default
  name: gateway
spec:
  selector:
    app: gateway
  ports:
    - protocol: TCP
      port: 80
      targetPort: 80

---
apiVersion: networking.k8s.io/v1
kind: Ingress
metadata:
  name: example
  namespace: default
  annotations:
    nginx.ingress.kubernetes.io/rewrite-target: /$2
spec:
  ingressClassName: nginx
  rules:
    - host: codovstvo-test.ru
      http:
        paths:
          - backend:
              service:
                name: gateway
                port:
                  number: 80
            path: /gateway(/|$)(.*)
            pathType: Prefix
```