FROM hopsoft/graphite-statsd:0.9.12-phusion
MAINTAINER Chuck Sakoda <chuck.sakoda@us.imshealth.com>

ENV CARBON_UDP_ENABLED False
RUN mkdir -p /etc/my_init.d
ADD scripts/01-carbon_udp.sh /etc/my_init.d/

EXPOSE 2003:2003/udp 
