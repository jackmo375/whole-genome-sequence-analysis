#!/bin/bash

# this script and the 2d version need the gatk python enviroment
# to get this we need conda loaded on chpc:
# $ module load anaconda/3-2021.11
# then we cd to the gatk directory, and look for the file:
#   gatkcondaenv.yml
# if it is there, we can run:
# $ conda env create -n gatk -f gatkcondaenv.yml


source ./config.sh

idSample="NA18486"
vcf="${project}output-data/${idSample}.raw.vcf.gz"

$gatk CNNScoreVariants \
    -V ${vcf} \
    -R ${fasta} \
    -O ${project}working-data/${idSample}.cnn-1d.vcf.gz
