#!/bin/bash

###  Brief:   Activate container
###  Author:  barry.paneer@qq.com
###  Date:    2019/04/12

source base.sh

CONTAIN_HISTORY=`docker ps -a | grep $LAST_IMAGE_NAME`

if [ -z $CONTAIN_HISTORY ]; then
	echo "register container..."
	docker run -dit -m 2G --memory-swap -1 --name=$REPO_IMGAE_NAME $LAST_IMAGE_NAME
	echo "done!"
else
	echo "starting container..."
	docker start $REPO_IMGAE_NAME
	echo "done!"
fi



