#! /bin/bash

if [ $# -lt 2 ]
then
    exit -1
fi


line=$( grep $2 $1 )

username="$(cut -d':' -f5<<<$line )"

echo $username
