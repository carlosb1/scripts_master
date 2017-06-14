#!/bin/sh

PATH_DATASET="/home/carlosb/datasets"
PATH_SOURCE_CODE="$PWD/mcv-m5"

sudo docker run -it -v="$PATH_DATASET:/srv/data" -v="$PATH_SOURCE_CODE:/srv/src/mcv-m5" --rm gw000/keras-full  ipython2
