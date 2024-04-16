#!/bin/bash

MODEL=mistralai/Mixtral-8x7B-Instruct-v0.1
FILEPATH=/home/user/workspace/datasets/patronus_enterprise_pii/processed_patronus_enterprise_pii.csv

python run_generation.py \
--model_name_or_path  $MODEL \
--use_hpu_graphs \
--use_kv_cache \
--max_new_tokens 100 \
--do_sample \
--bf16 \
--batch_size 1 \
--filepath $FILEPATH \
--dataset_name custom \
--test_custom

