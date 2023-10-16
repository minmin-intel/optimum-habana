#!/bin/bash

python ../gaudi_spawn.py \
    --world_size 8 --use_deepspeed run_clm_model_setup.py \
    --config_name configs/gpt2_model_config.json \
    --tokenizer_name gpt2 \
    --dataset_name wikitext \
    --dataset_config_name wikitext-2-raw-v1 \
    --per_device_train_batch_size 16 \
    --per_device_eval_batch_size 4 \
    --do_train \
    --do_eval \
    --learning_rate 4e-4 \
    --output_dir /tmp/test-clm \
    --gaudi_config_name configs/gaudi_gpt2_config.json \
    --use_habana \
    --use_lazy_mode \
    --use_hpu_graphs_for_inference \
    --gradient_checkpointing \
    --use_cache False \
    --throughput_warmup_steps 3 \
    --deepspeed configs/deepspeed.json