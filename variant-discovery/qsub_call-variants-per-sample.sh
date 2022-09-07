#!/bin/bash
#PBS -l select=1:ncpus=20:mpiprocs=1
#PBS -P CBBI1243
#PBS -N callVariantsPerSample
#PBS -q serial
#PBS -l walltime=3:00:00
#PBS -o /mnt/lustre/users/jmorrice/projects/single-sample-gatk/reports/callVariantsPerSample.out
#PBS -e /mnt/lustre/users/jmorrice/projects/single-sample-gatk/reports/callVariantsPerSample.err
#PBS -m abe
#PBS -M jackmo375@gmail.com

cd /mnt/lustre/users/jmorrice/projects/single-sample-gatk
./pipelines/short-variant-calling/call-variants-per-sample.sh || { exit 1; }
