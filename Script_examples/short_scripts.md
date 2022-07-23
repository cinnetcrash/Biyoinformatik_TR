** Short Scripts 

for i in *.fastq
do
   echo $i
done


for i in *.fastq
do
   basename $i .fastq
done



for i in *.fastq
do
   newname=$(basename $i .fastq).fq
   echo $newname
done
