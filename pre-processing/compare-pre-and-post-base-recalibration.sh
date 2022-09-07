#!/bin/bash

idSample="NA18486"
project="/mnt/lustre/users/jmorrice/projects/single-sample-gatk/"
gatk="${project}software/gatk-4.2.6.1/gatk"


$gatk AnalyzeCovariates \
    -before ${project}working-data/${idSample}.recal.table \
    -after ${project}working-data/${idSample}.post-recal.table \
    -plots ${project}reports/${idSample}_baserecal.pdf
