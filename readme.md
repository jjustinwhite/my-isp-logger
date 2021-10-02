# My ISP Logger
Monitors various host names and local router for ping and packetloss. Useful to prove your ISP is dropping the connection upstream of your local network.

*Sources:*
* https://gremaudpi.emf-informatique.ch/monitoring-your-internet-access-with-raspberry-pi-2/
* https://mostlyoperational.com/posts/2017-12-28_monitoring-your-home-network-with-influxdb-on-raspberry-pi-with-docker/

## Services

### My crappy shell scripts main.sh
Run via cron every minute, we take an mtr report and log it to a rotating file for long term logging

### InfluxDB
to-do


### Telegraf
* Config at telegraf.conf
* Update `local_router`, `internet_hosts`, and `dns` configs to change what we monitor 
* to run the docker container, `docker run -d --net=host --name telegraf -v $PWD/telegraf.conf:/etc/telegraf/telegraf.conf:ro arm32v7/telegraf`



### Pingloss
Capture some basic metrics on local router and internet host packet loss.
to-do


### Grafana
Used to vizualize timeseries data from InfluxDB
to-do
