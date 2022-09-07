#!/bin/bash
#PBS -l select=1:ncpus=20:mpiprocs=1
#PBS -P CBBI1243
#PBS -N applyBQSR
#PBS -q serial
#PBS -l walltime=0:20:00
#PBS -o /mnt/lustre/users/jmorrice/projects/single-sample-gatk/reports/applyBQSR.out
#PBS -e /mnt/lustre/users/jmorrice/projects/single-sample-gatk/reports/applyBQSR.err
#PBS -m abe
#PBS -M jackmo375@gmail.com

cd /mnt/lustre/users/jmorrice/projects/single-sample-gatk
./pipelines/apply-base-recalibration-model.sh || { exit 1; }
