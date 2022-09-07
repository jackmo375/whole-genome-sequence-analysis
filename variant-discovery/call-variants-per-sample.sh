#!/bin/bash

idSample="NA18486"

project="/mnt/lustre/users/jmorrice/projects/single-sample-gatk/"

gatk="${project}software/gatk-4.2.6.1/gatk"
bam="${project}output-data/${idSample}.analysis-ready.bam"
fasta="${project}reference-data/gatk-resource-bundle/Homo_sapiens_assembly38.fasta"
intervals="${project}reference-data/gatk-resource-bundle/wgs_calling_regions.hg38.interval_list"
snpDatabases="${project}reference-data/gatk-resource-bundle/1000G_phase1.snps.high_confidence.hg38.vcf.gz"
indelDatabases="${project}reference-data/gatk-resource-bundle/Mills_and_1000G_gold_standard.indels.hg38.vcf.gz"


$gatk --java-options "-Xmx4g" HaplotypeCaller  \
    -R ${fasta} \
    -I ${bam} \
    -L ${intervals} \
    -D ${snpDatabases} \
    -O ${project}working-data/${idSample}.g.vcf.gz \
    -ERC GVCF
