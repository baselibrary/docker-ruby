FROM baselibrary/baseimage:2.0.0
MAINTAINER ShawnMa <qsma@thoughtworks.com>

## Version
ENV RUBY_MAJOR   1.8
ENV RUBY_VERSION 1:1.8.7.375-1bbox1~xenial2

## Repository
RUN \
  apt-key adv --keyserver keyserver.ubuntu.com --recv-keys C3173AA6 &&\
  echo "deb http://ppa.launchpad.net/brightbox/ruby-ng/ubuntu xenial main" > /etc/apt/sources.list.d/ruby.list

## Packages
RUN \
  apt-get update &&\
  apt-get install -y ruby1.8=$RUBY_VERSION ruby1.8-dev rubygems1.8 &&\
  rm -rf /var/lib/apt/lists/*
