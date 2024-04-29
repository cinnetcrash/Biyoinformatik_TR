#!/bin/bash

# Bash Scripting ile Basit Otomasyon ve Sık Kullanılan Komutlar
## Komut Satırı

# **Kabuk**, bilgisayarınızı bir grafik kullanıcı arabirimi (GUI) aracılığıyla kontrol etmek için farenizi ve klavyenizi kullanmak yerine bir klavye ile kontrol etmenizi sağlayan bir komut satırı arabirim programıdır. İlk başta garip ve zor görünebilir, ancak kabukta ustalaşmanın birçok nedeni vardır.
# 
# * Çoğu biyoinformatik programı yalnızca komut satırından çalıştırılabilir. Dolayısıyla, genomik veya transkriptomik çalışmak istiyorsanız kabuğa aşina olmanız gerekecektir.
# * Kabuk, işinizi daha verimli ve daha hızlı yapmanız için size güç verir. Bu, tekrarlanabilir bir araştırma programı geliştirmeye yönelik ilk adımdır.
# 
# * Bulut bilgisayarlarına yalnızca komut satırı arabirimleri üzerinden erişilebilir.
# 
# 
## man

# Bu komut manual'in kısaltmasıdır. Bu komutu kullanarak herhangi bir program ya da komut ile ilgili yardım alabilirsiniz.
# 
# ~~~ {.bash}
# $ man whoami
# ~~~


## help

# Help komutu kullanarak bir çok komut veya araç ile ilgili ayrıntılı bilgi alabilirsiniz. Kullanım örneği de aşağıdaki gibidir. 
# 
# ~~~ {.bash}
# $ less --help
# ~~~


## ls 

# komutu bulunduğunuz dizin içerisinde bulunan dosyları listelemeye yarar. Listelemek istediğiniz dosyada
# ekstra argümanlar kullanarak daha ayrıntılı bir listeleme yapabilirsiniz.
# 
# ~~~ {.bash}
# $ ls -l
# ~~~

## mkdir

# Bu komut size bulunduğunuz dizin içersinde klasör oluşturmaya yardımcı olan bir komuttur.
# Bu komutu kullanarak birden fazla klasörü aynı anda oluşturabilirsiniz.
# 
# ~~~ {.bash}
# $ mkdir klasör1 klasör2
# ~~~

## cd 

# Bu komut "change directory" yani dizin değiştirmeye yarayan çok kullanılan komutlardan bir tanesidir. 
# 
# ~~~ {.bash}
# $ cd klasör1
# ~~~

## pwd

# Bu komut bulunduğunuz dizini ekrana yazdırmaya yarayan bir komuttur. 
# 
# ~~~ {.bash}
# $ pwd
# ~~~
# Çıktısı da şu şekilde olmaktadır. "home/user/Desktop/klasor1"

## whoami

# Bu komut ile o an işlem yaptığınız kullanıcının adını ekrana yazdırabilirsiniz.
# 
# ~~~ {.bash}
# $ whoami
# ~~~

## rm

# Bu komutu remove yani silme işlemi yapmaya yaramaktadır. Bu komut kullanılarak genellikle dosyalar silinebilmektedir.
# İsterseniz -r opsiyonunu kullanarak klasörleri de silebilirsiniz.
# 
# ~~~ {.bash}
# $ rm -r
# ~~~

## head

# Bu komut herhangi bir dosya içerisinde bulunan bilgilerin en üst kısmında bulunan kısmını göremeyi sağlar.
# 
# ~~~ {.bash}
# $ head -5 dosyaadi.txt
# ~~~
# * Bu komut ile "dosyaadi.txt" dosyasının ilk 5 satırını önizleyebilirsiniz.

## less

# ~~~ {.bash}
# $ less
# ~~~

## more

# ~~~ {.bash}
# $ less
# ~~~

## cat

# Bu komut ile herhangi bir dosya içerisinde bulunan tüm bilgiler kabuk ekranına yazdırılabilir.
# 
# ~~~ {.bash}
# $ cat
# ~~~

## touch

# Bu komutu kullanarak hızlı bir şekilde bir veya birden fazla dosya oluşturabilirsiniz.
# 
# ~~~ {.bash}
# $ touch
# ~~~

## cp

# Bu komutu kullanarak herhangi bir dosyayı kopyalayabilirsiniz. Bu kopyalama işlemi sonrası orjinal dosya silinmeyecektir.
# 
# ~~~ {.bash}
# $ cp dosya1.txt ../../hello_world
# ~~~
# bu komut ile dosya1.txt dosyası iki üst klasörde bulunan "hello_world" klasörü içersine kopyalanır.

## mv

# Bu komut ile iki işlem yapabilirsiniz. Bir tanesi adından da anlaşılacağı üzere move yani taşıma işlemi, diğeri de herhangi bir dosyanın adını değiştirmeye yaramaktadır. 
# 
# Taşıma için 
# ~~~ {.bash}
# $ mv dosya2.txt ../../hello_world
# ~~~
# İsim değiştirmek için
# ~~~ {.bash}
# $ mv dosya2.txt yeni_dosya.txt
# ~~~
# 
# İki şekilde de kullanabilirsiniz.

## chmod

## su

# ~~~ {.bash}
# $ mv dosya2.txt yeni_dosya.txt
# ~~~

## sudo

# ~~~ {.bash}
# $ mv dosya2.txt yeni_dosya.txt
# ~~~

## sudo apt update / sudo apt-get update

# ~~~ {.bash}
# $ mv dosya2.txt yeni_dosya.txt
# ~~~

## sudo apt upgrade / sudo apt-get upgrade

# ~~~ {.bash}
# $ mv dosya2.txt yeni_dosya.txt
# ~~~

## df

# ~~~ {.bash}
# $ mv dosya2.txt yeni_d
