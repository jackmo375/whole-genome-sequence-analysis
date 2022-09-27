#!/bin/bash
#PBS -l select=1:ncpus=20:mpiprocs=1
#PBS -P CBBI1243
#PBS -N funAnnVar
#PBS -q serial
#PBS -l walltime=0:10:00
#PBS -o /mnt/lustre/users/jmorrice/projects/single-sample-gatk/reports/funAnnVar.out
#PBS -e /mnt/lustre/users/jmorrice/projects/single-sample-gatk/reports/funAnnVar.err
#PBS -m abe
#PBS -M jackmo375@gmail.com

cd /mnt/lustre/users/jmorrice/projects/single-sample-gatk
./pipelines/callset-refinement/annotate-variants-for-function.sh || { exit 1; }
