#!/bin/bash

idSample="NA18486"
project="/mnt/lustre/users/jmorrice/projects/single-sample-gatk/"

cp \
    ${project}working-data/${idSample}.recal.bam \
    ${project}output-data/${idSample}.analysis-ready.bam

cp \
    ${project}working-data/${idSample}.recal.bai \
    ${project}output-data/${idSample}.analysis-ready.bai

