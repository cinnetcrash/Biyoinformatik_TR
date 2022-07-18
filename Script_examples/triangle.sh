echo "Enter First number"
read a
echo "Enter Second Number"
read b
echo "Enter Last Number"
read c


if [ $a == $b -a $b == $c -a $a == $c ]
then 
echo Equilateral

elif [ $a == $b -o $b == $c -o $a == $c ]
then
echo Isosceles

else
echo Scalene

fi
