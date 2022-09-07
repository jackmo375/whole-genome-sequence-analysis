#!/bin/bash

source ./config.sh

idSample="NA18486"

$gatk --java-options -Xmx2g IndexFeatureFile \
    -I ${project}working-data/$idSample.g.vcf
