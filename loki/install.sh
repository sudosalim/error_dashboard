LOKI_VERSION=2.9.3
docker run --name loki -d -v $(pwd):/mnt/config -p 3100:3100 grafana/loki:2.9.3 -config.file=/mnt/config/loki-config.yaml