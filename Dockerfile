FROM centos:latest
MAINTAINER Augusteo

RUN yum -y update; yum clean all
RUN yum -y install openssh openssh-server openssh-clients openssl-libs rsync which; yum clean all