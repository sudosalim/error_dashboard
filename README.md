# Logs Dashoard
Simple dashboard and log collector for processed server logs.

## Components:
- Loki: https://grafana.com/docs/loki/latest/get-started/overview/
- Grafana


## Setup
- Start Loki docker container using command in `loki/install.sh`
- Start Grafana dashboard from `./grafana` directory using docker compose:
```
docker compose up -d
```

### Useful APIs
1. Check if loki is ready
 
```
GET http://localhost:3100/ready

# Possible outcomes:
# 200 - OK (ready)
# 503 - Service unavailable: Ingester not ready: waiting for 15s after being ready
```
2. Submit log stream to Loki
```
POST http://localhost:3100/loki/api/v1/push
```

3. Grafana dashboard
```
# Grafana http://localhost:3000/?orgId=1
# brew services start grafana 
```


### TODO:
- Automate deployment using one command, maybe using make
- Improve the dashboard