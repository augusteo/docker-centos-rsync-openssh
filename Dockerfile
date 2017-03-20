FROM centos:latest

MAINTAINER Victor Augusteo

RUN curl --silent --location https://rpm.nodesource.com/setup_7.x | bash -
RUN yum -y update \
  && yum -y install openssh openssh-server openssh-clients openssl-libs \
  rsync \
  which \
  ruby \
  nodejs gcc-c++ make \
  gcc ruby-devel rubygems \
  && yum clean all
RUN npm install -g gulp bower
RUN gem install compass --no-rdoc --no-ri