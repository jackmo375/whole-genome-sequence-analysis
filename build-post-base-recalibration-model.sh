#!/bin/bash

# note! I am only using one snp database and 1 indel databse for now for dev purposes.
# I need to include all variant databases in the gatk resource bundle when I know that
# the code is working properly.
#
#   Jack Morrice
#   2022-09-02

project="/mnt/lustre/users/jmorrice/projects/single-sample-gatk/"
gatk="/mnt/lustre/users/jmorrice/projects/single-sample-gatk/software/gatk-4.2.6.1/gatk"

idSample="NA18486"
bam="${project}working-data/${idSample}.recal.bam"
fasta="${project}reference-data/gatk-resource-bundle/Homo_sapiens_assembly38.fasta"
intervals="/mnt/lustre/users/jmorrice/projects/single-sample-gatk/reference-data/gatk-resource-bundle/wgs_calling_regions.hg38.interval_list"
snpDatabases="${project}reference-data/gatk-resource-bundle/1000G_phase1.snps.high_confidence.hg38.vcf.gz"
indelDatabases="${project}reference-data/gatk-resource-bundle/Mills_and_1000G_gold_standard.indels.hg38.vcf.gz"

$gatk --java-options -Xmx2g \
    BaseRecalibrator \
    -I ${bam} \
    -O ${project}working-data/${idSample}.post-recal.table \
    -R ${fasta} \
    -L ${intervals} \
    --known-sites ${snpDatabases} \
    --known-sites ${indelDatabases} \
    --verbosity INFO
