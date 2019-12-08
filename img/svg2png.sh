#!/bin/sh

# name:   svg2png.sh
# author: nbehrnd@yahoo.com
# date:   2019-12-08 (YYYY-MM-DD)

# This script converts .svg present into  .png.
#
# The project contains .svg which I think use more space, than needed.
# So this bash script moderates ImageMagick to convert the .svg into
# .png.  The .png will have the same name, yet updated file extension,
# similar to an example by Thomas Erben, pp 207/208.[1]  Imposing
# 300 dpi input resolution increases pixel dimension in the output
# by a factor of three; so an approximate re-scaling by 33% with mogrify
# of the intermediate follows.  At this stage, a looseless optimization
# of the .png by optipng[2] concludes the action.
# Set up and eventually run in Linux Xubuntu 18.04.3 LTS.
#
# [1] Thomas Erben, Einfuehrung in Unix/Linux fuer Naturwissenschaftler,
#     SpringerSpektrum, 2018, ISBN 978-3-662-50300-3, doi
#     10.1007/978-3-662-50301-0 and its companion site on
#     https://github.com/terben/Einfuehrung_in_Unix
# [2] https://linux.die.net/man/1/optipng

for FILE in *.svg;
do
    echo ${FILE}
    NAME=$(basename ${FILE} .svg )
    convert -density 300 ${FILE} ${NAME}.png
    mogrify -scale 33% ${NAME}.png

    optipng ${NAME}.png
done
