docker-graphite-statsd
======================
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
  -e CARBON_UDP_ENABLED=False
  csakoda/graphite-statsd
```
