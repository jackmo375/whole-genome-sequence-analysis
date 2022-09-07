#!/bin/bash

idSample="NA18486"

project="/mnt/lustre/users/jmorrice/projects/single-sample-gatk/"

gatk="${project}software/gatk-4.2.6.1/gatk"
bam="${project}working-data/${idSample}.md.bam"
fasta="${project}reference-data/gatk-resource-bundle/Homo_sapiens_assembly38.fasta"
intervals="${project}reference-data/gatk-resource-bundle/wgs_calling_regions.hg38.interval_list"
snpDatabases="${project}reference-data/gatk-resource-bundle/1000G_phase1.snps.high_confidence.hg38.vcf.gz"
indelDatabases="${project}reference-data/gatk-resource-bundle/Mills_and_1000G_gold_standard.indels.hg38.vcf.gz"

recalibrationReport="${project}working-data/${idSample}.recal.table"

$gatk --java-options -Xmx2g \
    ApplyBQSR \
    -R ${fasta} \
    --input ${bam} \
    --output ${project}working-data/${idSample}.recal.bam \
    -L ${intervals} \
    --bqsr-recal-file ${recalibrationReport}
