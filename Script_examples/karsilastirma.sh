#!/bin/bash

# Kullanıcıdan bir numara girmesi istenir.
echo "Bir numara giriniz: "

# Kullanıcıdan bir girdi alınır ve x değişkenine atanır.
read x

# Kullanıcıdan başka bir numara girmesi istenir.
echo "Başka bir numara giriniz: "

# Kullanıcıdan bir girdi alınır ve y değişkenine atanır.
read y

# Bu değerler birbiri ile karşılaştırmak için if kalıplarını kullanabiliriz.
# -gt (Greater Than) büyüktür işareti ile girdiler karşılaştırılıyor.
# Girdilerin sayılsal değerler olması gerekmektedir. "-gt" ile stringleri karşılaştıramazsınız.
if [ $x -gt $y ]
then
echo "X büyüktür Y. "

# -lt (Less Than) büyüktür işareti ile girdiler karşılaştırılıyor.
elif [ $x -lt $y ]
then
echo "X küçüktür Y. "

# -eq (Equal) eşittir işareti ile girdiler karşılaştırılıyor.
elif [ $x -eq $y ]
then 
echo "X eşittir Y"
fi
