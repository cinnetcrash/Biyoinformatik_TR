#!/bin/bash

# Bu script değişkenleri anlamak için yazılmış bir scripttir.
# script.sh dosyasını çalıştırdıktan sonra girdiğiniz argüman kadar çıktıyı ekrana yazdırır.


# 0 Değişkenini yazdırma
echo "Sıfırıncı değişken yani scriptin kendisi: $0"

# 1 Değişkenini yazdırma
echo "Kullanıcının girdiği birinci argüman: $1"

# 2 Değişkenini yazdırma
echo "Kullanıcının girdiği ikinci argüman: $2"

# 3 Değişkenini yazdırma
echo "Kullanıcının girdiği üçüncü argüman: $3"

# 10 Değişkenini yazıdrma
echo "Kullanıcının girdiği onuncu argüman: ${10}"

# Parametre sayısını yazdırır
echo "Kullanıcının girdiği argüman sayısı: $#"

# Parametrelerin hepsini yazdırır
echo "Kullanıcının girdiği argümanların hepsi: $@"


