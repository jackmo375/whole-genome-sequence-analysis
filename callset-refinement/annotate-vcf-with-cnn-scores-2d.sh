#!/bin/bash

source ./config.sh

vcf="${project}output-data/${idSample}.raw.vcf.gz"
bam="${project}output-data/${}"

# 1D model
$gatk CNNScoreVariants \
    -V vcf_to_annotate.vcf.gz \
    -R ${fasta} \
    -O annotated.vcf

# 2D model
$gatk CNNScoreVariants \
    -I aligned_reads.bam \
    -V vcf_to_annotate.vcf.gz \
    -R ${fasta} \
    -O annotated.vcf \
    -tensor-type read-tensor
