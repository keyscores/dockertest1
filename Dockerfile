FROM ubuntu

RUN apt-get update && apt-get install -y tree git

COPY run_tests.sh /usr/local/sbin
