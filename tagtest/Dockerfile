FROM debian:jessie

MAINTAINER Jerry Baker (kizbitz): 'jerry.baker@simpledove.com'

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get -qq update && apt-get install -qq -y \
    apt-utils \
    curl \
    git-core \
    locales \
    lsb-release \
    pwgen
