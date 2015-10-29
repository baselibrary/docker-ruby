FROM baselibrary/ubuntu:14.04
MAINTAINER ShawnMa <qsma@thoughtworks.com>

## Version
ENV RUBY_MAJOR 1.9
ENV RUBY_VERSION 1:1.9.3.551-2bbox1~trusty1

## Repository
RUN \
  apt-key adv --keyserver keyserver.ubuntu.com --recv-keys C3173AA6 &&\
  echo "deb http://ppa.launchpad.net/brightbox/ruby-ng/ubuntu trusty main" > /etc/apt/sources.list.d/ruby.list

## Packages
RUN \
  apt-get update &&\
  apt-get install -y ruby1.9.1=$RUBY_VERSION ruby1.9.1-dev  &&\
  rm -rf /var/lib/apt/lists/*

## Additional
RUN \
  gem sources --add https://ruby.taobao.org/ --remove https://rubygems.org/ &&\
  gem install rake bundler --no-rdoc --no-ri

