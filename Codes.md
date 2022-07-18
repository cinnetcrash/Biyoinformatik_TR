Commands for day 2 

cat -n dna.fasta
cat -E dna.fasta
wc dna.fasta
history
cut -f 2 genes.gtf | head -n 20
rm -i file.txt

Tilde

# my first Unix shell script
echo "Hello World"

for filename in *.$1
do
 mv $filename ${filename%$1}$2
done

grep ">" intron_IME_data.fasta
grep -v ">" intron_IME_data.fasta
grep -v ">" reference_seq.fasta
grep "ATACA" reference_seq.fasta | less
grep -i ATACA * | head (ignores upper lower case)

REGEX Examples
grep "^ATG.*ACACAC.*TGA$" reference_seq.fasta (The ^ character is a special character that tells
grep to only match a pattern if it occurs at the start of a line. Similarly, the $ tells grep to match patterns that
occur at the end of the line.)

Question : Can you predict which one will generate more matches?

ACGT
AC.GT
AC*GT
AC.*GT

head -n 2 reference_seq.fasta | tr 'A-Z' 'a-z'

Result: 
>nc_007373.1 influenza a virus (a/new york/392/2004(h3n2)) segment 1, complete sequence
agcaaaagcaggtcaattatattcagtatggaaagaataaaagaactacggaacctgatgtcgcagtctcgcactcgcga

Sed Command

head -n 1 reference_seq.fasta | sed 's/Chr1/Chromosome 1/'

cut -f 3  filename.tsv | sort | uniq -d

tr '\n' '@' < reference_seq.fasta | sed 's/>/#>/g' | tr '#' '\n' | grep "i1_.*5UTR" | sort -nk

ls | mv | less | man | uniq | top |
cd | cp | head | chmod | sort | ps |
pwd | mkdir | tail | source | cut | kill |
| rmdir | touch | wc | tr | |
| rm | nano | | grep | |
| | (pipe) | | | sed | |
| > (write to file) | | | | |
| < (read from file) | | | | |
