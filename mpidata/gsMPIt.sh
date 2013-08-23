#!/bin/bash
#
#qsub submission script for GeneSeqerMPI.  Look for "#CHANGE THIS:" to individualize.
#Volker Brendel, ISU, March 2006 (vbrendel@iastate.edu).

#$ -S /bin/bash
#
# Set the Parallel Environment and number of procs.

#CHANGE THIS (queue, number of processors):
#$ -pe mpich 6
#$ -cwd
#CHANGE THIS (maximal execution time):
#$ -l h_rt=00:10:00

# Where we will make our temporary directory.
#CHANGE THIS (specify directory):
BASE="/tmp"


#
# Put your Job commands here.
#
#------------------------------------------------
# Specify binary and arguments here:
#
#
#CHANGE THIS (location of binary, arguments to GeneSeqerMPI):
PROG="../bin/GeneSeqerMPIt"
PROGARGS="-s Arabidopsis -d ../data/ATest1 ../data/ATest2 -O ./out.gbA.MPI6 -g ../data/U89959"

/opt/mpich/gnu/bin/mpirun -np $NSLOTS -machinefile $TMP/machines $PROG $PROGARGS

#------------------------------------------------
