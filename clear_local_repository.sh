#!/bin/sh

###  Brief:   Clear all the images in local repository
###  Author:  barry.paneer@qq.com
###  Date:    2019/04/12

IMAGE_LIST=`docker images -q`

if [ -z $IMAGE_LIST ]; then
        echo "Local repository: nothing to clear..."
        return
fi

echo "clearing......"
docker rmi -f $IMAGE_LIST
echo "done!"


