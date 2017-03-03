FROM ubuntu

RUN apt-get update && apt-get install -y tree git

COPY runtest* /usr/local/sbin/
