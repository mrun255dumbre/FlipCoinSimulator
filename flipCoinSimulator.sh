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
read -p "number of flips" n
for (( i=1; i<=$n; i++ ))
do
        flip=$((RANDOM%2))
        if [ $flip -eq 1 ]
        then
                headCnt=$(($headCnt + 1))
        else
                tailCnt=$(($tailCnt + 1))
        fi
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
fi
