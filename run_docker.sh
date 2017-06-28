#!/bin/bash

PATH_DATASET="$PWD/datasets"
PATH_SOURCE_CODE="$PWD/mcv-m5"
RUN_COMMAND="ipython2"

while getopts "b" OPTION; do
	case $OPTION in
		b)
			RUN_COMMAND="/bin/bash"
		;;	
		*)
			echo "./run_docker.sh [-b]"
			exit 1
		;;
	esac

done


sudo docker run --dns "158.109.8.6" -it -v="$PATH_DATASET:/srv/data" -v="$PATH_SOURCE_CODE:/srv/src/mcv-m5" --rm carlosb/keras-full:latest-new  $RUN_COMMAND
