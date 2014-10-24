docker-graphite-statsd
======================
## Quick Start

```sh
sudo docker run -d \
  -p 80:80 \
  -p 2003:2003 \
  -p 2003:2003/udp \
  -p 8125:8125/udp \
  csakoda/graphite-statsd
```
