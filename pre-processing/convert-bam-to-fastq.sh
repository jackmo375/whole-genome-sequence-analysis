# taken from http://www.htslib.org/doc/samtools-fasta.html

source config.sh

samtools collate \
    -u \
    -O input-data/NA18486.chrom11.ILLUMINA.bwa.YRI.low_coverage.20120522.bam | \
        samtools fastq \
            -1 working-data/NA18486_1.fq \
            -2 working-data/NA18486_2.fq \
            -0 /dev/null \
            -s /dev/null \
            -n

