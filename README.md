# Bash Scripting ile Basit Otomasyon ve Sık Kullanılan Komutlar
## Komut Satırı

The **shell** is a command line interface program that allows you to control your computer with a keyboard rather than using your mouse and keyboard to control your computer through a graphical user interface (GUI). It may seem strange and difficult at first, but there are  many reasons master the shell.

* Most bioinformatics programs can only be run from the command line. So, you will have to become familiar with the shell if you want to work in genomics or transcriptomics.
* The shell gives the you power to do your work more efficiently and more quickly. This is the first step toward developing a reproducible research program.

* Cloud computers can only be accessed through command line interfaces.


## Bu komut herhangi bir dosya içerisinde bulunan bilgilerin en üst kısmında bulunan kısmını göremeyi sağlar.

~~~ {.bash}
$ head -5 dosyaadi.txt
~~~
* Bu komut ile "dosyaadi.txt" dosyasının ilk 5 satırını önizleyebilirsiniz.


## komutu bulunduğunuz dizin içerisinde bulunan dosyları listelemeye yarar. Listelemek istediğiniz dosyada
## ekstra argümanlar kullanarak daha ayrıntılı bir listeleme yapabilirsiniz.

~~~ {.bash}
$ ls -l
~~~

## mkdir
Bu komut size bulunduğunuz dizin içersinde klasör oluşturmaya yardımcı olan bir komuttur.
Bu komutu kullanarak birden fazla klasörü aynı anda oluşturabilirsiniz.

~~~ {.bash}
$ mkdir klasör1 klasör2
~~~

"cd" komutu "change directory" yani dizin değiştirmeye yarayan çok kullanılan komutlardan bir tanesidir. 
~~~ {.bash}
$ cd klasör1
~~~


"pwd" komutu bulunduğunuz dizini ekrana yazdırmaya yarayan bir komuttur. 
~~~ {.bash}
$ pwd
~~~
Çıktısı da şu şekilde olmaktadır. "home/user/Desktop/klasor1"

"Whoami" komutu ile o an işlem yaptığınız kullanıcının adını ekrana yazdırabilirsiniz.
~~~ {.bash}
$ whoami
~~~

"rm" komutu remove yani silme işlemi yapmaya yaramaktadır. Bu komut kullanılarak genellikle dosyalar silinebilmektedir.
İsterseniz -r opsiyonunu kullanarak klasörleri de silebilirsiniz.
~~~ {.bash}
$ rm -r
~~~


~~~ {.bash}
$ less
~~~


~~~ {.bash}
$ cat
~~~

~~~ {.bash}
$ touch
~~~

~~~ {.bash}
$ cp
~~~

~~~ {.bash}
$ mv
~~~





## Loops
Loops can really improve productivity through automation as they allow us to execute commands repetitively. Like to wildcards and tab completion, using loops also reduces the amount of typing (and typing mistakes).

In the next portion, we will build loops that do something to a large number of files.

~~~ {.bash}
$ for i in sequence.*
> do
>    echo $i
> done
~~~



## Bash Scripts

You can replace echo with wc and execute it.

~~~ {.bash}
for file in *.fastq
do
	wc ${file}
done
~~~

~~~ {.bash}
$ for filename in *.zip
> do
> unzip $filename
> done
~~~

## Working with collections of files; conditionals

~~~ {.bash}
for i in *
do
   if [ -f $i ]; then
      echo $i is a file
   elif [ -d $i ]; then
      echo $i is a directory
   fi
   done
~~~




