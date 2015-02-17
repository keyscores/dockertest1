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

# locale
ENV LANG     en_US.UTF-8
ENV LANGUAGE en_US

ADD locale /etc/default/locale
ADD locale.gen /etc/locale.gen

RUN locale-gen --purge en_US.UTF-8
RUN update-locale en_US.UTF-8

# bashrc
ADD bashrc /.bashrc
