FROM ubuntu:latest
RUN apt-get update && \
    apt-get -y --no-install-recommends install python2.7-dev && \
    rm -rf /var/cache && \
    rm -rf /var/lib/apt/lists/*
WORKDIR /app
