#!/usr/bin/env bash

# Training
for i in `seq 1 20`; do
    env CUDA_VISIBLE_DEVICES=0 python3 main.py --task $i
done

# Testing
for i in `seq 1 20`; do
    env CUDA_VISIBLE_DEVICES=0 python3 main.py --task $i --test
done
