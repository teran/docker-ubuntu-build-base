FROM ubuntu:bionic

RUN apt-get update && \
    apt-get install -y --no-install-suggests --no-install-recommends \
        ca-certificates \
        git-core \
        gnupg && \
    apt-get clean && \
    rm -rvf /var/lib/apt/lists/*

RUN apt-get update && \
    apt-get install -y --no-install-suggests --no-install-recommends \
        dpkg-dev \
        g++ \
        gcc \
        libc-dev \
        make && \
    apt-get clean && \
    rm -rvf /var/lib/apt/lists/*

RUN apt-get update && \
    apt-get install -y --no-install-suggests --no-install-recommends \
        devscripts && \
    apt-get clean && \
    rm -rvf /var/lib/apt/lists/*
