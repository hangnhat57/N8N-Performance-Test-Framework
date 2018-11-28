# Performance Test Framework Docker Base

Framework for Performance Testing with : 
* Jmeter 
* InfluxDB
* Grafana
* Collectd
* SpeedtestIO

---
## Structure
![](./images/structure.png)


---

## Set up
1. Install collectd on app - db server 
- [x]     Copy files `install-colectd.sh` and `collectd.conf` from project to destination server. 
- [x] Edit collectd config in `collectd.conf` then execute file `install-collectd.sh`
2. Start docker containers for InfluxDB - Grafana - WebPageTest Server `docker-compose up -d`
>     do not for got allow firewall for ports 8086, 25826, 3000  ( Or you could change the port in docker-compose.yml)
3. In Jmeter, add a backend listener to send metric to influxdb 
    `http://server_ip:8086/write?db=jmeter`





