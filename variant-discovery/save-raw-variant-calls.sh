#!/bin/bash

source ./config.sh

idSample="NA18486"

cp ${project}working-data/${idSample}.vcf.gz ${project}output-data/${idSample}.raw.vcf.gz
cp ${project}working-data/${idSample}.vcf.gz.tbi ${project}output-data/${idSample}.raw.vcf.gz.tbi
