#!/bin/bash
#PBS -l select=1:ncpus=1:mpiprocs=1
#PBS -P CBBI1243
#PBS -N echoTest
#PBS -q serial
#PBS -l walltime=0:00:10
#PBS -o /mnt/lustre/users/jmorrice/projects/single-sample-gatk/reports/test.out
#PBS -e /mnt/lustre/users/jmorrice/projects/single-sample-gatk/reports/test.err
#PBS -m abe
#PBS -M jackmo375@gmail.com

cd /mnt/lustre/users/jmorrice/projects/single-sample-gatk
./pipelines/test.sh || { exit 1; }
