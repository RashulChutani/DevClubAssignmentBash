#! /bin/bash

summ=0
i=0
for word in $(<"$1")
do
    echo "$word"
    echo $i
    if [ $((i%2)) -eq 0 ]
    then
	number=$word
	echo $number
    else
	if [ "$word" == "+" ]
	then
	    summ=$(($summ+$number))
	elif [ "$word" == "-" ]
	then
	    summ=$(($summ-$number))
	elif [ "$word" == "/" ]
	then
	    summ=$(($summ/$number))
	else
	    summ=$(($summ * $number))
	fi
    fi
    i=$((i+1))
    echo $summ
done

echo $summ
