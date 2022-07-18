Simple automation with Bash Scripting

Q1 - What basic linux commands could help us quickly peek at the files?

head, tail, wc -l

Q2 - How many sequences are in the file?

grep ^@SRR030257 SRR030257_1.fastq | wc -l
grep --count ^@SRR030257 SRR030257_1.fastq

or 

wc -l SRR030257_1.fastq

Q3 - 
