# Simple automation with Bash Scripting
## Shell

The **shell** is a command line interface program that allows you to control your computer with a keyboard rather than using your mouse and keyboard to control your computer through a graphical user interface (GUI). It may seem strange and difficult at first, but there are  many reasons master the shell.

* Most bioinformatics programs can only be run from the command line. So, you will have to become familiar with the shell if you want to work in genomics or transcriptomics.
* The shell gives the you power to do your work more efficiently and more quickly. This is the first step toward developing a reproducible research program.

* Cloud computers can only be accessed through command line interfaces.

## Basic Commands
~~~ {.bash}
$ head
~~~

~~~ {.bash}
$ ls
~~~

~~~ {.bash}
$ mkdir
~~~

~~~ {.bash}
$ cd
~~~

~~~ {.bash}
$ pwd
~~~

~~~ {.bash}
$ whoami
~~~

~~~ {.bash}
$ rm
~~~


~~~ {.bash}
$ head
~~~

~~~ {.bash}
$ head
$ tail
$ more
$ less
$ cat
$ touch
$ cp
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


* Q1 - What basic linux commands could help us quickly peek at the files?

head, tail, wc -l

* Q2 - How many sequences are in the file?

grep ^@SRR030257 SRR030257_1.fastq | wc -l
grep --count ^@SRR030257 SRR030257_1.fastq

or 

wc -l SRR030257_1.fastq

* Q3 - Here is the for loop you wrote for unzipping .zip files:

~~~ {.bash}
$ for filename in *.zip
> do
> unzip $filename
> done
~~~

* Q4 - Use the gzip command to compress the file sample_1.fastq. Use gunzip to decompress it back to the original contents

Use the above commands along with *man* and *ls* to see what happens to the file.

Answer : 

* Q5 - How many reads are contained in the file sample_1.fastq?

Examine some of the file to work out how many lines each *read* takes up.

Answer : 



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




