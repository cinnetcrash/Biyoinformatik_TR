#!/usr/bin/bash

$1

echo "Dosya girişi başarılı"

rm -r sorted.bam
rm -r view.bam
rm -r sorted_indexed.bai
rm -r nanopore.vcf
rm -r markdup.bam

echo "Daha önceki .sam ve .bam dosyaları silindi"

#view işlemi
samtools view -b -o view.bam $1 

echo "Samtools view işlemi tamamlandı"


# Samtools sorting işlemi
samtools sort -o sorted.bam view.bam

echo "Samtools sorting işlemi tamamlandı."


# Samtools indexing işlemi
samtools index sorted.bam sorted_indexed.bai

echo "Samtools indexing işlemi tamamlandı"

# Samtools Markdup işlemi
samtools markdup -O bam,level=1 sorted.bam markdup.bam

echo "Samtools Markdup işlemi tamamlandı"

# Freebayes işlemi
freebayes -f ../reference_seq.fasta markdup.bam > nanopore.vcf

echo "Freebayes ile variant calling işlemi tamamlandı"
"."
".."
"..."
"...."
"....."
"......"
echo "Analiz tamamlanmıştır."
