#!/bin/bash
#PBS -l select=1:ncpus=20:mpiprocs=1
#PBS -P CBBI1243
#PBS -N qualimap
#PBS -q serial
#PBS -l walltime=0:10:00
#PBS -o /mnt/lustre/users/jmorrice/projects/single-sample-gatk/reports/qualimap.out
#PBS -e /mnt/lustre/users/jmorrice/projects/single-sample-gatk/reports/qualimap.err
#PBS -m abe
#PBS -M jackmo375@gmail.com

cd /mnt/lustre/users/jmorrice/projects/single-sample-gatk
./pipelines/pre-processing/get-qualimap-report.sh || { exit 1; }
