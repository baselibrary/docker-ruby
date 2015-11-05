FROM baselibrary/baseimage:1.0.0
MAINTAINER ShawnMa <qsma@thoughtworks.com>

## Version
ENV MAJOR   1.8
ENV VERSION 1:1.8.7.375-2bbox2~trusty1

## Repository
RUN \
  apt-key adv --keyserver keyserver.ubuntu.com --recv-keys C3173AA6 &&\
  echo "deb http://ppa.launchpad.net/brightbox/ruby-ng/ubuntu trusty main" > /etc/apt/sources.list.d/ruby.list

## Packages
RUN \
  apt-get update &&\
  apt-get install -y ruby1.8=$VERSION ruby1.8-dev rubygems1.8 &&\
  rm -rf /var/lib/apt/lists/*

## Additional
RUN \
  gem sources --add https://ruby.taobao.org/ --remove https://rubygems.org/ &&\
  gem install rake bundler --no-rdoc --no-ri

