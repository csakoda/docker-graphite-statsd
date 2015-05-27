docker-graphite-statsd
======================

A UDP enabled graphite/statsd Docker.

Home: https://github.com/csakoda/docker-graphite-statsd

## Quick Start

```sh
docker build -d csakoda/graphite-statsd
```

## Store Whisper data outside the container
```sh
docker build -d -v /data/graphite:/opt/graphite/storage/whisper csakoda/graphite-statsd
```
