#!/bin/bash
#PBS -l select=1:ncpus=20:mpiprocs=1
#PBS -P CBBI1243
#PBS -N buildBQSR
#PBS -q serial
#PBS -l walltime=0:20:00
#PBS -o /mnt/lustre/users/jmorrice/projects/single-sample-gatk/reports/buildBQSR.out
#PBS -e /mnt/lustre/users/jmorrice/projects/single-sample-gatk/reports/buildBQSR.err
#PBS -m abe
#PBS -M jackmo375@gmail.com

cd /mnt/lustre/users/jmorrice/projects/single-sample-gatk
./pipelines/build-base-recalibration-model.sh || { exit 1; }
