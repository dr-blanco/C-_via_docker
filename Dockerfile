FROM ubuntu:23.04
RUN apt-get update && \
    apt-get install -y build-essential gdb && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
