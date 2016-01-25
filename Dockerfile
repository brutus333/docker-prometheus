FROM prom/prometheus
MAINTAINER Virgil Chereches <virgil.chereches@gmx.net>

COPY prometheus.conf /etc/prometheus/prometheus.yml
COPY alert.rules /etc/prometheus/alert.rules
COPY run-prometheus.sh /bin/run-prometheus.sh
COPY configure-prometheus.sh /bin/configure-prometheus.sh
ENTRYPOINT [ "/bin/run-prometheus.sh" ]
