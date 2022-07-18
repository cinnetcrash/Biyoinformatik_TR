#!/bin/bash

echo "Enter a number"
read x

echo "Enter another number"
read y


if [ $x -gt $y ]
then
echo "X büyüktür Y. "

elif [ $x -lt $y ]
then
echo "X küçüktür Y. "

elif [ $x -eq $y ]
then 
echo "X eşittir Y"
fi
