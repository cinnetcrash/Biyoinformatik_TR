# Simple automation with Bash Scripting
## Shell

The **shell** is a command line interface program that allows you to control your computer with a keyboard rather than using your mouse and keyboard to control your computer through a graphical user interface (GUI). It may seem strange and difficult at first, but there are  many reasons master the shell.

Q1 - What basic linux commands could help us quickly peek at the files?

head, tail, wc -l

Q2 - How many sequences are in the file?

grep ^@SRR030257 SRR030257_1.fastq | wc -l
grep --count ^@SRR030257 SRR030257_1.fastq

or 

wc -l SRR030257_1.fastq

Q3 - 
