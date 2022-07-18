#!/bin/bash

# A simple variable example

echo "Please enter your name"
read a
echo "Please enter your surname"
read b

greeting=Hello
name=a
surname=b
echo $greeting $a $b


echo "Peki bugün kendini nasıl hissediyorsun?"
read c

if [[ c -eq "iyiyim" ]]; then
echo "Senin adına sevindim"
elif [[ c -nq "iyiyim"]]; then
echo "Neden kendini iyi hissetmiyorsun"
fi
