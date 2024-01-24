#!/bin/bash

# Nanopore Virüs Genomu Bioinformatik Analiz Pipeline Scripti
# Bu script, FASTQ formatındaki ham nanopore verisinden başlayarak konsensüs genom oluşturma sürecini kapsar.
# Scriptin çalışabilmesi için FastQC, cutadapt, Minimap2, SAMtools ve bcftools'un yüklü olması gerekmektedir.

# Veri, sonuç ve referans genom dosyalarının bulunduğu dizinlerin yollarını ayarlayın
DATA_DIR="/home/cinnet/Desktop/2024_Exercise_Club/ham_veri/RUN29/barcode75"               # Ham veri dosyasının bulunduğu dizin
RESULTS_DIR="sonuclar"              # Sonuçların kaydedileceği dizin
REF_GENOME="/home/cinnet/Desktop/2024_Exercise_Club/fasta_referans_genom/sars-cov-2_genome.fasta" # Referans genom dosyasının bulunduğu dizin

# Nanopore ham veri dosyasının adı (FASTQ formatında)
SEQ_DATA="dizi.fastq"  # Kendi dosya adınız ile değiştirin

# Kalite değeri (Q değeri) ve adapter ayarı
QUALITY_VALUE=12
  # Gerekirse adapter dizisini buraya girin

# Sonuçlar dizini yoksa oluştur
mkdir -p $RESULTS_DIR

# FastQC ile Kalite Kontrolü
echo "FastQC ile kalite kontrolü yapılıyor..."
fastqc $DATA_DIR/$SEQ_DATA -o $RESULTS_DIR

# cutadapt ile Trimming (Kırpma)
echo "cutadapt ile veri kırpılıyor..."
cutadapt -q $QUALITY_VALUE -o $RESULTS_DIR/trimmed_$SEQ_DATA $DATA_DIR/$SEQ_DATA

# Minimap2 ile Dizileme (Alignment)
echo "Minimap2 ile dizileme yapılıyor..."
minimap2 -ax map-ont $REF_GENOME $RESULTS_DIR/trimmed_$SEQ_DATA > $RESULTS_DIR/aligned.sam

# SAMtools ile Dizilenmiş Verilerin İşlenmesi
echo "SAMtools ile dizilenmiş veriler işleniyor..."
samtools view -bS $RESULTS_DIR/aligned.sam > $RESULTS_DIR/aligned.bam
samtools sort $RESULTS_DIR/aligned.bam -o $RESULTS_DIR/sorted_aligned.bam
samtools index $RESULTS_DIR/sorted_aligned.bam

# Varyant Çağırma ve VCF Dosyası Oluşturma
echo "Varyantlar çağrılıyor ve VCF dosyası oluşturuluyor..."
bcftools mpileup -f $REF_GENOME $RESULTS_DIR/sorted_aligned.bam | bcftools call -mv -Ov > $RESULTS_DIR/variants.vcf

# VCF Dosyasını bgzip ile Sıkıştırma ve Indexleme
echo "VCF dosyası sıkıştırılıyor ve indeksleniyor..."
bgzip -c $RESULTS_DIR/variants.vcf > $RESULTS_DIR/variants.vcf.gz
tabix -p vcf $RESULTS_DIR/variants.vcf.gz

# Konsensüs Genomun Oluşturulması
echo "Konsensüs genom oluşturuluyor..."
cat $REF_GENOME | bcftools consensus $RESULTS_DIR/variants.vcf.gz > $RESULTS_DIR/consensus.fa

echo "Nanopore virüs genomu analiz pipeline'ı başarıyla tamamlandı."
