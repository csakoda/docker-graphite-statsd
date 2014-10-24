FROM hopsoft/graphite-statsd:latest
MAINTAINER Chuck Sakoda <chuck.sakoda@us.imshealth.com>

ENV CARBON_UDP_ENABLED False
RUN mkdir -p /etc/my_init.d
RUN echo "#!/bin/sh\nsed -i \"s/^ENABLE_UDP_LISTENER.*/ENABLE_UDP_LISTENER = \$CARBON_UDP_ENABLED/\" /opt/graphite/conf/carbon.conf\nexit 0" > /etc/my_init.d/carbon_udp.sh
RUN chmod +x /etc/my_init.d/carbon_udp.sh

EXPOSE 2003:2003/udp 
