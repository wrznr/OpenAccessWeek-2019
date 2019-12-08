#!/bin/sh

# name:    probe_png.svg
# author:  nbehrnd@yahoo.com
# date:    2019-12-08 (YYYY-MM-DD)

# Simimlar to probe_svg.sh, this script probes .png with ImageMagick's
# identify for their characteristics.
#
# After provision of the executable bit (chmod u+x probe_svg.sh), result
# may be displayed on the CLI by
#
# [sh] ./probe_png.sh
#
# or stored in a permanent record
#
# [sh] ./probe_png.sh > report.txt
#
# for further processing.

for FILE in *.png;
do
    identify ${FILE}
done

# END
