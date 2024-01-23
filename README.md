# Logs Dashoard

`LOKI_VERSION=2.9.3`

```
docker run --name loki -d -v $(pwd):/mnt/config -p 3100:3100 grafana/loki:$($LOKI_VERSION) -config.file=/mnt/config/loki-config.yaml
```

```
# Loki: http://localhost:3100/ready
# 503 - Service unavailable: Ingester not ready: waiting for 15s after being ready
# 200 - OK
# http://localhost:3100/loki/api/v1/push
# Grafana http://localhost:3000/?orgId=1
# brew services start grafana 
```
