#!/bin/bash

BIN="./Binaires"

# Compilation

make all

# Exécution

echo " "
echo "EXECUTIONS POUR PROBLEME-POISSON-1D"
echo " "
sleep 1

for size in 5 10 50 100 300 500 1500 3000; do

    $BIN/0 $size

    $BIN/1 $size

    if [ "$size" -le 1000 ]; then
        for n in 1 2 4 6 8; do
        OMP_NUM_THREADS=$n $BIN/2 $size
    done
    fi

    if [ "$size" -le 1000 ]; then
        for n in 1 2 4 6 8; do
       mpiexec -n $n $BIN/3 $size
    done
    fi

    $BIN/4 $size

done