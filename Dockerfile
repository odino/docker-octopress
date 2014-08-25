FROM ubuntu:14.04

MAINTAINER alessandro nadalin <alessandro.nadalin@gmail.com>

# update OS
RUN apt-get update
RUN apt-get upgrade -y

# Install depndencies
RUN apt-get install -y build-essential ruby1.9.1-dev

# Install bundler
RUN gem install bundler

# Expose default Octopress port
EXPOSE 4000

# PARTY!
CMD export LC_ALL=en_US.UTF-8 && /bin/bash
