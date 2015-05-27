FROM hopsoft/graphite-statsd:0.9.12-phusion
MAINTAINER Chuck Sakoda <chuck.sakoda@us.imshealth.com>

ENV CARBON_UDP_ENABLED True
RUN mkdir -p /etc/my_init.d
ADD scripts/01-carbon_udp.sh /etc/my_init.d/
RUN mkdir -p /usr/local/src/carbon/conf
ADD files/storage-schemas.conf /usr/local/src/carbon/conf/
ADD files/local-settings.py /opt/graphite/webapp/graphite/local_settings.py

EXPOSE 80:80
EXPOSE 2003:2003
EXPOSE 2003:2003/udp
EXPOSE 8125:8125/udp
