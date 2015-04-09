#!/bin/bash

#  fcm-dl.sh
#  
#  Copyright 2014 Darshak Parikh <darshak@openmailbox.org>
#  
#  This program is free software; you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation; either version 3 of the License, or
#  (at your option) any later version.
#  
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#  
#  You should have received a copy of the GNU General Public License
#  along with this program; if not, write to the Free Software
#  Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
#  MA 02110-1301, USA.
#  


PREURL="http://dl.fullcirclemagazine.org/issue"
LANG="en"
FORMAT="pdf"

while getopts "el:" options; do
    case $options in
        e)
            FORMAT="epub"
            ;;
        l)
            LANG=$OPTARG
            ;;
    esac
done

n=1
while [ $# -gt 0 ]; do
    if [ $n -lt $OPTIND ]; then
        let n=$n+1
        shift
    else
        break
    fi
done

if [ $# -eq 0 ]; then
    echo "Which issue? "
    read ISSUE
elif [ $# -eq 1 ]; then
    ISSUE=$1
elif [ $# -eq 2 ]; then
    ISSUE={$1..$2}
fi

#TODO: Check for positive whole numbers
#TODO: Add 404 check
wget -c $PREURL$ISSUE"_"$LANG"."$FORMAT
