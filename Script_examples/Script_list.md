
for i in *.fastq
do
   newname=$(basename $i .fastq).fq
   echo $newname
done
