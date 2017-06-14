#!/bin/bash

PATH_DATASET="/home/carlosb/datasets"
PATH_SOURCE_CODE="$PWD/mcv-m5"
KERAS_OLD=""

while getopts "k" OPTION; do
	case $OPTION in
		k)
			KERAS_OLD=":1.2.0"
		;;	
		*)
			echo "./run_docker.sh [-k]"
			exit 1
		;;
	esac

done


sudo docker run -it -v="$PATH_DATASET:/srv/data" -v="$PATH_SOURCE_CODE:/srv/src/mcv-m5" --rm gw000/keras-full$KERAS_OLD  ipython2
