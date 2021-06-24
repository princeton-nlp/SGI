#!/bin/bash
GAMES="pong breakout kangaroo"
# GAMES="kangaroo"
SEEDS=(0 1 2)

for seed in ${SEEDS[@]}
do
    for game in ${GAMES} 
    do
        sbatch -A pnlp run.slurm ${game} ${seed}
    done;
done;
