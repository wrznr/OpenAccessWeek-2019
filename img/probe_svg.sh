#!/bin/sh

# name:    probe_svg.sh
# author:  nbehrnd@yahoo.com
# date:    2019-12-08 (YYYY-MM-DD)

# At least the majority of the .svg in this project are raster images.
# Prior to attempt their conversion into .png potentially smaller in
# their file volume, I would like to know about their original dimension
# in pixels.  This bash script relays the work to identify, which is part
# of ImageMagick, to provide for example file type, pixel dimension, color
# space, and file size.
#
# After provision of the executable bit (chmod u+x probe_svg.sh), result
# may be displayed on the CLI by
#
# [sh] ./probe_svg.sh
#
# or stored in a permanent record
#
# [sh] ./probe_svg.sh > report.txt
#
# for further processing.

for FILE in *.svg;
do
    identify ${FILE}
done

# END
