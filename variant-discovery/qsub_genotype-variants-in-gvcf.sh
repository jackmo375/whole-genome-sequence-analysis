#!/bin/bash
#PBS -l select=1:ncpus=20:mpiprocs=1
#PBS -P CBBI1243
#PBS -N genotypeGVCF
#PBS -q serial
#PBS -l walltime=1:00:00
#PBS -o /mnt/lustre/users/jmorrice/projects/single-sample-gatk/reports/genotypeGVCF.out
#PBS -e /mnt/lustre/users/jmorrice/projects/single-sample-gatk/reports/genotypeGVCF.err
#PBS -m abe
#PBS -M jackmo375@gmail.com

cd /mnt/lustre/users/jmorrice/projects/single-sample-gatk
./pipelines/short-variant-calling/genotype-variants-in-gvcf.sh || { exit 1; }
