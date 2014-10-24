docker-graphite-statsd
======================

A UDP enabled graphite/statsd Docker.  UDP is defaultly disabled, enable it by setting ```CARBON_UDP_ENABLED``` environment variable in ```docker run```

## Quick Start

```sh
docker build -t csakoda/graphite-statsd .
```

```sh
docker run -d \
  -p 80:80 \
  -p 2003:2003 \
  -p 2003:2003/udp \
  -p 8125:8125/udp \
  -e CARBON_UDP_ENABLED=True
  csakoda/graphite-statsd
```
