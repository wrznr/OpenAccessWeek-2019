#!/bin/sh

# name:   png_optimize_2.sh
# author: nbehrnd@yahoo.com
# date:   2019-12-08 (YYYY-MM-DD)

# This script will optimize the .png a twice, now with loose of data
# by pngquant [1]
#
# [1] https://pngquant.org/

for FILE in *.png;
do
    echo ${FILE}
    pngquant 32 --nofs ${FILE} -o ${FILE}_intermediate
    mv ${FILE}_intermediate ${FILE}
done
