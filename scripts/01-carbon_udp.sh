#!/bin/sh
sed -i "s/^ENABLE_UDP_LISTENER.*/ENABLE_UDP_LISTENER = $CARBON_UDP_ENABLED/" /opt/graphite/conf/carbon.conf
exit 0
