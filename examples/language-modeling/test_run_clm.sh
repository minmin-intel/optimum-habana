#!/bin/bash
export http_proxy=http://proxy-dmz.intel.com:911
export https_proxy=https://proxy-dmz.intel.com:912

export HTTP_PROXY=http://proxy-dmz.intel.com:911
export HTTPS_PROXY=https://proxy-dmz.intel.com:912

python run_clm_model_setup.py \
    --config_name configs/gpt2_model_config.json \
    --tokenizer_name gpt2 \
    --dataset_name wikitext \
    --dataset_config_name wikitext-2-raw-v1 \
    --per_device_train_batch_size 4 \
    --per_device_eval_batch_size 4 \
    --do_train \
    --do_eval \
    --output_dir /tmp/test-clm \
    --gaudi_config_name configs/gaudi_gpt2_config.json \
    --use_habana \
    --use_lazy_mode \
    --use_hpu_graphs_for_inference \
    --throughput_warmup_steps 3