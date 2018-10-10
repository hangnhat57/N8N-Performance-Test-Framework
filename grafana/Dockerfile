FROM grafana/grafana

USER root
RUN apt-get update && \
    apt-get -y install jq 
    
COPY ./dashboards/ /dashboards/
COPY ./datasources/ /datasources/
COPY entrypoint.sh ./
RUN chmod u+x entrypoint.sh

ENTRYPOINT ["/app/entrypoint.sh"]
