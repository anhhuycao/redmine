## Setup load balancing with nginx

- Nginx default port `80`
- Kong1 gateway port `8000`, api port `8080`
- Kong2 gateway port `8001`, api port `8081`

## Command add service

- Add service

```
curl -i -s -X POST http://localhost:8001/services --data name=demo-service --data url='http://103.20.144.134:5000'
```

- Add route

```
curl -i -X POST http://localhost:8001/services/demo-service/routes --data 'paths[]=/' --data name=demo-route
```
