#!/bin/bash -x

echo "Flip Coin Simulator"
flip=$((RANDOM%2))
if [ $flip -eq 1 ];
then
        echo "It's Head"
else
        echo "It's Tail"
fi
