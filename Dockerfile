FROM centos:latest
MAINTAINER Augusteo

RUN yum -y update
RUN yum -y install openssh openssh-server openssh-clients openssl-libs rsync which
RUN yum -y install ruby
RUN yum clean all

RUN curl --silent --location https://rpm.nodesource.com/setup_7.x | bash -
RUN yum -y install nodejs gcc-c++ make