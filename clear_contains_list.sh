#!/bin/bash

###  Brief:   Clear the contains' list
###  Author:  barry.paneer@qq.com
###  Date:    2019/04/12

CID_LIST=`docker ps -aq`

if [ -z $CID_LIST ]; then
	echo "Contains list : nothing to clear..."
	return
fi

echo "clearing......"
docker rm $CID_LIST
echo "done!"


