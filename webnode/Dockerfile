##########################################################
#
# This file help us to create a service node image of WEB
#
# Name/Tag: netquake/webnode:1.0.1
# OS:       CentOS7-x86-64bit
#
# Author:   Barry
# Date:     2019/4/12
#
######### Derive a new image from centos image ###########
FROM centos:centos7
LABEL maintainer="barry<barry.paneer@qq.com>"

######### Copy && install ################################
RUN mkdir -p ./tmp
### Copy
ADD Python-3.5.7.tgz ./tmp
ADD requirements.txt ./tmp/Python-3.5.7/
ADD nginx-1.14.2.tar.gz ./tmp

### Install
# Tools
RUN yum -y update
RUN yum -y install gcc g++ make
RUN yum -y install zlib zlib-devel openssl openssl-devel openssl-static libffi libffi-devel
# Python3
# Work dir of building image (can be overwrited by '-w')
WORKDIR ./tmp/Python-3.5.7
RUN ./configure --enable-static --prefix=/usr/local
RUN make all && make install
RUN ln -s /usr/local/bin/python3 /usr/bin/python3
RUN pip3 install -r ./requirements.txt

# Nginx
WORKDIR ../openssl-fips-2.0.16
RUN ./config && make && make install
WORKDIR ../nginx-1.14.2
RUN ./configure && make && make install

### Specify running user
RUN groupadd -r docker && useradd -r -g docker docker
USER docker

### Expose port
EXPOSE 80/tcp 22/tcp

# Configuration env. vars
ENV NODE_NAME=web ENV_ABC=aaa

# Specify folder which loaded from host
#VOLUME ["~/www", "~/pkg"]


