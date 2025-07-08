#!/bin/bash

BIN="./Binaires"

# Compilation

make all

# Exécution

echo " "
echo "EXECUTIONS POUR PROBLEME-POISSON-2D"
echo " "
sleep 1

for size in 5 10 50 100 300 500 700 1000 1500 2000 2500 3000 3500 4000 4500 5000 5500; do
    if [ "$size" -le 100 ]; then
    "$BIN/0" "$size"
    fi

    if [ "$size" -le 700 ]; then
        $BIN/1 $size
    fi

    if [ "$size" -le 700 ]; then
        for n in 1 2 4 6 8; do
            OMP_NUM_THREADS=$n $BIN/2 $size
        done
    fi

    if [ "$size" -le 700 ]; then
        for n in 1 2 4 6 8; do
            mpiexec -n $n $BIN/3 $size
        done
    fi

    if [ "$size" -le 700 ]; then
        for n in 1 2 4 6 8; do
            mpiexec -n $n $BIN/4 $size
        done
    fi

    if [ "$size" -le 700 ]; then
        $BIN/5 $size
    fi

    $BIN/6 $size
done