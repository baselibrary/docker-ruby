FROM baselibrary/baseimage:1.0.0
MAINTAINER ShawnMa <qsma@thoughtworks.com>

## Version
ENV RUBY_MAJOR   2.3
ENV RUBY_VERSION 2.3.0-1bbox2~trusty1

## Repository
RUN \
  apt-key adv --keyserver keyserver.ubuntu.com --recv-keys C3173AA6 &&\
  echo "deb http://ppa.launchpad.net/brightbox/ruby-ng/ubuntu trusty main" > /etc/apt/sources.list.d/ruby.list

## Packages
RUN \
  apt-get update &&\
  apt-get install -y ruby2.3=$RUBY_VERSION ruby2.3-dev  &&\
  rm -rf /var/lib/apt/lists/*

