Use the AWS CLI (It is free to use for this dataset but beware of costs on your own AWS resources)
sudo apt-get update  (apt-get will be discussed in detail in the next module)
sudo apt-get install awscli
aws s3 ls s3://sra-pub-sars-cov2/ --no-sign-request
Get the list and sizes of all available files:
aws s3 ls s3://sra-pub-sars-cov2/sra-src/ --recursive --no-sign-request > files.txt

Download three small fastq files to the local disk
aws s3 cp s3://sra-pub-sars-cov2/sra-src/ERR6565342/M34IRL44637.fastq.gz.1 M34IRL44637.fastq.gz.1 --no-sign-request
aws s3 cp s3://sra-pub-sars-cov2/sra-src/ERR6565343/M34IRL33931.fastq.gz.1 M34IRL33931.fastq.gz.1 --no-sign-request
aws s3 cp s3://sra-pub-sars-cov2/sra-src/ERR6565344/M34IRL46795.fastq.gz.1 M34IRL46795.fastq.gz.1 --no-sign-request



