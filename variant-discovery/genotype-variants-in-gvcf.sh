#!/bin/bash

source ./config.sh

idSample="NA18486"

gvcf="${project}working-data/${idSample}.g.vcf.gz"

$gatk --java-options '-Xmx2g -DGATK_STACKTRACE_ON_USER_EXCEPTION=true' \
    GenotypeGVCFs \
    -R ${fasta} \
    -L ${intervals} \
    --D ${snpDatabases} \
    -V ${gvcf} \
    -O ${project}working-data/${idSample}.vcf.gz
