#! /bin/bash

if [ $# = 0 ]
then
    exit -1
fi

if [ ! -d $1 ]; then
  # Control will enter here if $DIRECTORY doesn't exist.
    exit -1
fi

if [ $# = 1 ]
then
#| wc -l
    echo $( ( ls -p | grep -v / ) | wc -l )
fi

if [ $# = 2 ]
then 
	#ls -l "$1/*$2" | wc -l
    echo $( find $1 -mindepth 1 -maxdepth 1 -type f -name "*$2" -printf x | wc -c )
fi
exit 0
