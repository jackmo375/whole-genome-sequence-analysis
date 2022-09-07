#!/bin/bash

gatk="/mnt/lustre/users/jmorrice/projects/single-sample-gatk/software/gatk-4.2.6.1/gatk"

idSample="NA18486"
idRun="SRR011037"

$gatk --java-options "-Xms4000m -Xmx7g" \
    MarkDuplicates \
    --INPUT ./working-data/${idSample}_${idRun}.bam \
    --METRICS_FILE /mnt/lustre/users/jmorrice/projects/single-sample-gatk/reports/${idSample}.bam.metrics \
    --TMP_DIR /mnt/lustre/users/jmorrice/projects/single-sample-gatk/working-data/tmp \
    --ASSUME_SORT_ORDER coordinate \
    --CREATE_INDEX true \
    --OUTPUT ./working-data/${idSample}.md.bam
