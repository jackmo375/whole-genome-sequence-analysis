#!/bin/bash

fasta="/mnt/lustre/users/jmorrice/projects/single-sample-gatk/reference-data/gatk-resource-bundle/Homo_sapiens_assembly38.fasta"
input1="/mnt/lustre/users/jmorrice/projects/single-sample-gatk/input-data/SRR011037_1.filt.fastq.gz"
input2="/mnt/lustre/users/jmorrice/projects/single-sample-gatk/input-data/SRR011037_2.filt.fastq.gz"
idSample="NA18486"
idRun="SRR011037"
CN=""
readGroup="@RG\\tID:${idRun}\\t${CN}PU:${idRun}\\tSM:${idSample}\\tLB:${idSample}\\tPL:illumina"

/mnt/lustre/users/jmorrice/projects/single-sample-gatk/software/bwa-0.7.17/bwa mem \
    -K 100000000 \
    -R ${readGroup} \
    -t 16 \
    -M ${fasta} \
    ${input1} ${input2} | \
    samtools sort \
        --threads 16 \
        -m 2G - > /mnt/lustre/users/jmorrice/projects/single-sample-gatk/working-data/${idSample}_${idRun}_pe.bam
