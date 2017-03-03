FROM ubuntu

RUN apt-get update && apt-get install -y tree git

COPY run_tests* /usr/local/sbin/
