#   ***BU KOD HALEN YAPIM AŞAMASINDADIR***
#   ***This code is still ongoing***

#!/bin/bash
#This script is for doing "fastp" QC stuff then doing FastQC after that to understand what is that.


# We should create a directory
if [[ -d e fastqAll ]]; then rm -r fastqAll
mkdir fastqAll

#For input variables concatenate all fastq files in one single file.
for i in barcode*; do echo "${i}"; ls $i/*fastq | wc -l; done

#This line is for the echo all the files you need
for i in barcode*/; do echo "${i}"; cp *.fastq ../fastqAll; then; done

#Then we need to go to the directory of concatenate all fastq files
cd fastqAll

#Then do the concatenate for all files
cat *.fastq consensus.fastq

# we need to FastQC for all the files we have
mkdir fastQC

# we need to make QC for the files we have
fastqc -o firstQC -f consensus.fastq

# We need to do a fastp to trim the files that we used Previously
# I'm using Quality score 7 for ONT
fastp -i consensus.fastq -o consensus2.fastq -q 7

# This code for to do a after fastp QC file we have already
fastqc -o secondQC -f consensus2.fastq

#Then we should use the mapping for ONT reads with minimap2
# Make sure you added minimap to $PATH
minimap2 -ax map-ont -o nanopore.sam refseq.fasta consensus2.fastq

# Make sure you added minimap to $PATH
samtools view -b -o nanopore.bam nanopore.sam 

# Make sure you added minimap to $PATH
samtools sort -o nanopore_sorted.bam nanopore.bam 

# Make sure you added minimap to $PATH
samtools index nanopore_sorted.bam nanopore_sorted.bai

# Make sure you added minimap to $PATH
mkdir Mapping

# Make sure you added minimap to $PATH
cp nanopore_sorted.ba* Mapping/

# Make sure you added minimap to $PATH
samtools index nanopore_sorted_marked.bam nanopore_sorted_marked.bai

# Make sure you added minimap to $PATH
freebayes -f sars_cov2_ref.fasta nanopore_sorted_marked.bam > nanopore.vcf

# Make sure you added minimap to $PATH
ls -l nanopore.vcf 

# Make sure you added minimap to $PATH
wc -l nanopore.vcf 

# Make sure you added minimap to $PATH
nano nanopore.vcf 

# Make sure you added minimap to $PATH
grep "^NC" nanopore.vcf | wc -l

# Make sure you added minimap to $PATH
freebayes -f sars_cov2_ref.fasta nanopore_sorted_marked.bam

# Make sure you added minimap to $PATH
wc -l nanopore.vcf 

# Make sure you added minimap to $PATH
nano nanopore.vcf 

# Make sure you added minimap to $PATH
grep "^NC" nanopore.vcf | wc -l

# Make sure you added minimap to $PATH
sudo apt-get install bcftools

# Make sure you added minimap to $PATH
samtools mpileup -uf sars-cov-2_genome.fasta sample1.sorted.marked.bam | bcftools view  -vcg - > sample1.vcf

# Make sure you added minimap to $PATH
samtools mpileup -uf sars_cov2_ref.fasta nanopore_sorted_marked.bam | bcftools view -vcg - > nanopore_bcftools.vcf

# Make sure you added minimap to $PATH
vi nanopore_bcftools.vcf 

# Make sure you added minimap to $PATH
samtools mpileup -uf sars_cov2_ref.fasta nanopore_sorted_marked.bam | bcftools view -v > nanopore_bcftools.vcf

# Make sure you added minimap to $PATH
bcftools mpileup -f sars-cov-2_genome.fasta sample1.sorted.marked.bam | bcftools call -mv -o sample1.vcf

# Make sure you added minimap to $PATH
bcftools mpileup -f sars_cov2_ref.fasta nanopore_sorted_marked.bam | bcftools call -mv -o sample1.vcf

# Make sure you added minimap to $PATH
bcftools view -i '%QUAL>=20' nanopore.vcf  > nanopore_filtered_Q20.vcf

# Make sure you added minimap to $PATH
nano nanopore_filtered_Q20.vcf 

# Make sure you added minimap to $PATH
grep "^NC" nanopore_filtered_Q20.vcf | wc -l


# Make sure you added minimap to $PATH
grep "^NC" nanopore.vcf | wc -l 

# Make sure you added minimap to $PATH
cd /mnt/c/Users/ACER/Desktop/

# Make sure you added minimap to $PATH
gunzip GCF_009858895.2_ASM985889v3_genomic.gff.gz 

# Make sure you added minimap to $PATH
nano GCF_009858895.2_ASM985889v3_genomic.gff 

# Make sure you added minimap to $PATH
mv /home/phili/nanopore/nanopore_filtered_Q20.vcf .

# Make sure you added minimap to $PATH
cp nanopore_filtered_Q20.vcf /home/phili/nanopore/

# Make sure you added minimap to $PATH








