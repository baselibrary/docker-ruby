FROM baselibrary/baseimage:2.0.0
MAINTAINER ShawnMa <qsma@thoughtworks.com>

## Version
ENV RUBY_MAJOR   2.0
ENV RUBY_VERSION 2.0.0.648-2bbox1~xenial2

## Repository
RUN \
  apt-key adv --keyserver keyserver.ubuntu.com --recv-keys C3173AA6 &&\
  echo "deb http://ppa.launchpad.net/brightbox/ruby-ng/ubuntu xenial main" > /etc/apt/sources.list.d/ruby.list

## Packages
RUN \
  apt-get update &&\
  apt-get install -y ruby2.0=$RUBY_VERSION ruby2.0-dev  &&\
  rm -rf /var/lib/apt/lists/*
