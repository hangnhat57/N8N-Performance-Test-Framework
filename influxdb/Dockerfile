FROM influxdb:1.5.4-alpine

COPY influxdb.conf /etc/influxdb
RUN mkdir -p /usr/local/opt/collectd
COPY types.db /usr/local/opt/collectd
WORKDIR /app
COPY entrypoint.sh ./
RUN chmod u+x entrypoint.sh

# http dashboard
EXPOSE 8083
# collectd binary protocol
EXPOSE 25826/udp

ENTRYPOINT ["/app/entrypoint.sh"]
