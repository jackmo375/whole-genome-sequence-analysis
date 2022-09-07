#!/bin/bash
#PBS -l select=1:ncpus=20:mpiprocs=1
#PBS -P CBBI1243
#PBS -N indexGVCF
#PBS -q serial
#PBS -l walltime=0:05:00
#PBS -o /mnt/lustre/users/jmorrice/projects/single-sample-gatk/reports/indexGVCF.out
#PBS -e /mnt/lustre/users/jmorrice/projects/single-sample-gatk/reports/indexGVCF.err
#PBS -m abe
#PBS -M jackmo375@gmail.com

cd /mnt/lustre/users/jmorrice/projects/single-sample-gatk
./pipelines/short-variant-calling/index-sample-gvcf.sh || { exit 1; }
