#!/bin/bash

PATH_DATASET="$PWD/datasets"
PATH_RESULTS="$PWD/results"
PATH_SOURCE_CODE="$PWD/mcv-m5"
PATH_SOURCE_CODE_PERS_PROJECT="$PWD/pers-src"
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


sudo nvidia-docker run --dns "158.109.8.6" -it -v="$PATH_RESULTS:/srv/results" -v="$PATH_DATASET:/srv/data" -v="$PATH_SOURCE_CODE:/srv/src/mcv-m5" -v="$PATH_SOURCE_CODE_PERS_PROJECT:/srv/src/pers-src" --rm carlosb/my-nvidia:latest /bin/bash
