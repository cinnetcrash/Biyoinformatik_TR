#!/bin/bash

# Kullanıcıdan ilk kenar değeri alınır.
echo "Birinci numarayı giriniz: "
read a

# Kullanıcıdan ikinci kenar değeri alınır.
echo "İkinci numarayı giriniz: "
read b

# Kullanıcıdan üçüncü kenar değeri alınır.
echo "Son numarayı giriniz: "
read c



# If yapıları kullanılarak bu kenarlar birbirleri ile karşılaştırılır. 
# Bütün kenarların birbirine eşit olma durumu kontrol edilir.
if [ $a == $b -a $b == $c -a $a == $c ]
then 
echo "Eşkenar Üçgen"
# En az iki kenarın eşit olması durumu denetlenir.
elif [ $a == $b -o $b == $c -o $a == $c ]
then
echo "İkizkenar Üçgen"

# Yukarıdaki koşulların sağlanmadığı durumlarda hiçbir kenarın birbiri ile uyuşmaması durumu
else
echo "Çeşitkenar Üçgen"

fi
