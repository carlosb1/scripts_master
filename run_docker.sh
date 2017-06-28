#!/bin/bash

PATH_DATASET="$PWD/datasets"
PATH_SOURCE_CODE="$PWD/mcv-m5"
KERAS_OLD=""
RUN_COMMAND="ipython2"

while getopts "kb" OPTION; do
	case $OPTION in
		b)
			RUN_COMMAND="/bin/bash"
		;;	
		*)
			echo "./run_docker.sh [-k]"
			exit 1
		;;
	esac

done


sudo docker run --dns "158.109.8.6" -it -v="$PATH_DATASET:/srv/data" -v="$PATH_SOURCE_CODE:/srv/src/mcv-m5" --rm gw000/keras-full$KERAS_OLD  $RUN_COMMAND
