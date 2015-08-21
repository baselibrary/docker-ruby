FROM baselibrary/ubuntu:14.04
MAINTAINER ShawnMa <qsma@thoughtworks.com>

## Add repository
RUN \
  apt-key adv --keyserver keyserver.ubuntu.com --recv-keys C3173AA6 &&\
  echo "deb http://ppa.launchpad.net/brightbox/ruby-ng/ubuntu trusty main" > /etc/apt/sources.list.d/ruby.list

## Install packages
RUN \
  apt-get update &&\
  apt-get install -y ruby2.0 ruby2.0-dev &&\
  rm -rf /var/lib/apt/lists/*

## Install bundler
RUN \
  gem install rake bundler --no-rdoc --no-ri

