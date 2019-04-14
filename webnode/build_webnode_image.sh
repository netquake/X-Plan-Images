#!/bin/bash

###  Brief:   Build a docker image
###  Author:  barry.paneer@qq.com
###  Date:    2019/04/12


### Configuration ################################
source base.sh

##################################################

set -e     # Exit immediately if a simple command exits with a non-zero status

if [ ! -f ./$PYTHON_PKG_NAME ]; then
	echo "downloading python......"
	wget https://www.python.org/ftp/python/3.5.7/$PYTHON_PKG_NAME
	echo "done!"
else
	echo "skip, download python..."
fi

if [ ! -f ./$SSLFIPS_PKG_NAME ]; then
        echo "downloading openssl-fips......"
	wget https://www.openssl.org/source/openssl-fips-2.0.16.tar.gz
else
	echo "skip, download openssl-fips..."
fi

if [ ! -f ./$NGINX_PKG_NAME ]; then
	echo "downloading nginx......"
	wget http://nginx.org/download/$NGINX_PKG_NAME
	echo "done!"
else
	echo "skip, download nginx..."
fi

docker build -m 2G --memory-swap -1 -t $LAST_IMAGE_NAME .


