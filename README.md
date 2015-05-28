docker-graphite-statsd
======================

A UDP enabled graphite/statsd Docker.

Home: https://github.com/csakoda/docker-graphite-statsd

## Build this image

```sh
git clone https://github.com/csakoda/docker-graphite-statsd
docker build -t graphite-statsd docker-graphite-statsd
```

## Store Whisper data outside the container
```sh
docker run -d -p 80:80 -p 2003:2003 -p 2003:2003/udp -p 8125:8125/udp -v /data/graphite:/opt/graphite/storage/whisper graphite-statsd
```
