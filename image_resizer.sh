#!/bin/bash
# This script is licensed under GPL v3 or higher
#
# Author: Angel Berlanas Vicente
#         <angel.berlanas@gmail.com>


# Usage: ./image-resizer.sh $PATH_TO_DIR_OF_IMAGES

# Configuration parameters:
SCALE=60 # 60%


show_usage(){
    echo "Usage: ./image-resizer.sh $PATH_TO_DIR_OF_IMAGES"
}


PATH_TO_DIR_IMAGES="${1}"

if [ ! -d ${PATH_TO_DIR_IMAGES} ]; then
    show_usage
    exit 1
fi

CURRENTDIR=$(pwd)
cd ${PATH_TO_DIR_IMAGES}
for f in $(ls -1 *.png); do 
    echo Working with ${f}
    NEW_NAME=$(echo $(basename ${f} .png))
    convert ${f} -resize ${SCALE}% ${NEW_NAME}_${SCALE}.png
done
