FROM ubuntu:latest
MAINTAINER Mike Mackintosh <m@zyp.io>

# Add brightbox
RUN apt-get install -y software-properties-common
RUN apt-add-repository ppa:brightbox/ruby-ng-experimental
RUN apt-get update

# Install Ruby
RUN apt-get install -y ruby2.1 ruby2.1-dev

# Install deps
RUN apt-get install -y \
        build-essential \
        zlib1g-dev \
        libxml2-dev \
        libxslt1-dev \
        git \
        awscli \
        docker

# Cleanup Apt
RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Er, sure, why not
CMD ["/bin/bash"]
