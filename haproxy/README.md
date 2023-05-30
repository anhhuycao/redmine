## Test the configuration file

```
docker run -it --rm haproxy:2.7.8-alpine3.17 -v ./haproxy.cfg:/usr/local/etc/haproxy/haproxy.cfg -c -f /usr/local/etc/haproxy/haproxy.cfg
```

curl -i -s -X POST http://localhost:8001/services --data name=demo-service --data url='http://103.20.144.134:5000'
curl -i -X POST http://localhost:8001/services/demo-service/routes --data 'paths[]=/' --data name=demo-route

docker run -d --name prometheus --network=gateway_kong-net -p 9090:9090 -v ./prometheus.yml:/etc/prometheus/prometheus.yml prom/prometheus:latest

curl -X POST http://localhost:8001/services/demo-service/plugins --data "name=prometheus"
