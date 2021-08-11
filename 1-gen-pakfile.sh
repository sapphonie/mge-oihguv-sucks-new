#!/bin/bash

# our map version
oihguv_vers='b6'

# strip newlines
truncate -s -1 ./customcontent.txt

oihguv_packfile='oihguv_pakfile.txt'

# our tf2 path
tf2path='C:\Program Files (x86)\Steam\steamapps\common\Team Fortress 2\tf'

# our tf2 path in wsl
tf2wslpath='/mnt/c/Program Files (x86)/Steam/steamapps/common/Team Fortress 2'


# null our file
> ./oihguv_pakfile.txt

# loop thru lines in customcontent.txt
while read line; do
    # ignore comments
    if ! [[ "$line" =~ .*#.* ]]; then
        # output to our file
        echo "${line}"                                  >> ./${oihguv_packfile}
        echo "${tf2path}\\${line}" | sed 's/\//\\/g'    >> ./${oihguv_packfile}
    fi
done < customcontent.txt