# create a persistent volume for your data
docker volume create grafana-storage

# start grafana by using the above persistent storage
# and defining environment variables
 docker run --rm --mount type=bind,source=$PWD/custom.ini,target=/etc/grafana/grafana.ini -p 3000:3000 grafana/grafana

# docker run -d -p 3000:3000 --name=grafana \
#   --volume grafana-storage:/var/lib/grafana \
#   -e "GF_SERVER_ROOT_URL=http://my.grafana.server/" \
#   grafana/grafana-enterprise