#!/bin/sh

# name:   run_optipng.sh
# author: nbehrnd@yahoo.com
# date:   2019-12-07 (YYYY-MM-DD)

# For .png (already) in existence, optimize them without loose of
# significant information with optipng.

for FILE in *.png;
do
    echo $(FILE)
    optipng -o5 $(FILE)
done

# END
