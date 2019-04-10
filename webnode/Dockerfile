# This file help us to create a service node image of WEB
# System: CentOS7-x86-64bit

# Derive a new image from centos image
FROM centos:centos7
LABEL maintainer="barry<barry.paneer@qq.com>"

# Specify running user
USER deamon

# Expose port
EXPOSE 80/tcp 22/tcp

# Configuration env. vars
ENV NODE_NAME=web ENV_ABC=aaa

# Specify folder which loaded from host
VOLUME ~/www ~/data 

# Work dir
WORKDIR /home/workdir

