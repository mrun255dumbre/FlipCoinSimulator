#!/bin/bash -x

echo "Flip Coin Simulator"
flip=$((RANDOM%2))
if [ $flip -eq 1 ];
then
        echo "It's Head"
else
        echo "It's Tail"
fi

headCnt=0;
tailCnt=0;

cnt=1;
while [[ $cnt != 1000 && $headCnt != 21 && $tailCnt != 21 ]]
do
        flip=$((RANDOM%2))
        if [[ $flip -eq 1 ]]
        then
                headCnt=$(($headCnt + 1))
        else
                tailCnt=$(($tailCnt + 1))
        fi

        if [[ $headCnt -eq 21 ]]
        then
                echo "head is 21"
        else
                echo "tail count is" $tailCnt "head cnt is" $headCnt
        fi
        ((cnt++))
done


if [[ $headCnt -gt $tailCnt ]]
then
        wonBy=$(($headCnt-$tailCnt))
        echo "Head is won by " $wonBy
elif [[ $tailCnt -gt $headCnt ]]
then
        wonBy=$(($tailCnt-$headCnt))
        echo "Tail is won by " $wonBy
else
        echo "Tie"
	c=0;
	while [[ $c != 200 && $diff != 2  ]]
        do
                flip=$((RANDOM%2))
                if [[ $flip -eq 1 ]]
                then
                        headCnt=$(($headCnt + 1))
                else
                        tailCnt=$(($tailCnt + 1))
                fi
		((c++))
		diff=$(($headCnt-$tailCnt))
        done

        if [[ $headCnt -gt $tailCnt ]]
        then
                wonBy=$(($headCnt-$tailCnt))
                echo "Head is won by " $wonBy
        else
                echo "Tail is won"
        fi

fi
