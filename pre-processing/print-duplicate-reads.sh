#!/bin/bash
samtools view \
    /mnt/lustre/users/jmorrice/projects/single-sample-gatk/working-data/NA18486.md.bam \
    | awk '$2==1024 {print $1,$2}'
