FROM grafana/grafana

USER root
RUN apt-get update && \
    apt-get -y install jq curl

COPY ./dashboards/ /dashboards/
COPY ./datasources/ /datasources/
COPY startup.sh ./
ENTRYPOINT ["bash","-x","./startup.sh"]
