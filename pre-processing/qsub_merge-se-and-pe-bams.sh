#!/bin/bash
#PBS -l select=1:ncpus=20:mpiprocs=1
#PBS -P CBBI1243
#PBS -N mergeBams
#PBS -q serial
#PBS -l walltime=0:20:00
#PBS -o /mnt/lustre/users/jmorrice/projects/single-sample-gatk/reports/mergeBams.out
#PBS -e /mnt/lustre/users/jmorrice/projects/single-sample-gatk/reports/mergeBams.err
#PBS -m abe
#PBS -M jackmo375@gmail.com

cd /mnt/lustre/users/jmorrice/projects/single-sample-gatk
./pipelines/merge-se-and-pe-bams.sh || { exit 1; }
