##########################################################
#
# This file help us to create a service node image of WEB
#
# Name/Tag: netquake/webnode:xxx
#
# OS:       CentOS7-x86-64bit
#
######### Derive a new image from centos image ###########
FROM centos:centos7
LABEL maintainer="barry<barry.paneer@qq.com>"

######### Copy && install ################################
RUN mkdir -p tmp
### Copy
ADD Python-3.6.8.tgz ./tmp

### Install
# Tools
RUN yum -y install gcc make
RUN yum -y install openssl openssl-devel openssl-static libffi libffi-devel
# Python3
RUN cd ./tmp/Python-3.6.8
### Work dir of building image (can be overwrited by '-w')
WORKDIR tmp/Python-3.6.8
RUN ./configure --prefix=/usr/bin
RUN make all & make install

# Specify running user
USER deamon

# Expose port
EXPOSE 80/tcp 22/tcp

# Configuration env. vars
ENV NODE_NAME=web ENV_ABC=aaa

# Specify folder which loaded from host
#VOLUME ["~/www", "~/pkg"]

### Work dir of building image (can be overwrited by '-w')
#WORKDIR /tmp/

