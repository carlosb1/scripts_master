#!/bin/sh
#sudo apt-get install nfs-common

DIR_DATASET="$PWD/datasets"

mkdir "$DIR_DATASET"
sudo mount -o soft,intr,rsize=8192,wsize=8192 158.109.8.104:/data "$DIR_DATASET"

echo "Check dir: $DIR_DATASET"
