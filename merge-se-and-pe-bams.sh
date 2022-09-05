#!/bin/bash

# there is a problem with read group labels in the output file.
# I may need to fix this at some point in the future. 

samtools merge \
    working-data/NA18486_SRR011037.bam \
    working-data/NA18486_SRR011037_se.bam \
    working-data/NA18486_SRR011037_pe.bam \
    --threads 16
