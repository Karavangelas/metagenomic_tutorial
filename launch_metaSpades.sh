#!/bin/bash
#$ -S /bin/bash
#$ -cwd
#$ -M ks3379@drexel.edu
#$ -P rosenclassPrj
#$ -pe shm 16
#$ -l h_rt=48:00:00
#$ -l h_vmem=8G
#$ -l m_mem_free=8G

. /etc/profile.d/modules.sh
module load shared
module load proteus
module load sge/univa
module load gcc/4.8.1
module load python/2.7-current
module load spades/3.11.0

/mnt/HA/opt/spades/3.11.0/bin/spades.py --12 /lustre/scratch/ks3379/Tutorial5/RL_S001__insert_270.fq -t 16 -o /scratch/ks3379/output
