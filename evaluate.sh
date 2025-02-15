#!/bin/bash

# 定义 datasets 和 models 列表
datasets=("humaneval")
models=("gpt-3.5-turbo-0125")

# 遍历每个 dataset 和 model 组合
for dataset in "${datasets[@]}"; do
    for model in "${models[@]}"; do
        # 自动构造 input_path
        input_path="output/${dataset}/${model}.jsonl"
        
        # 构建并执行启动命令
        echo "Running with dataset: $dataset, model: $model"
        python evaluate/all_evaluate.py --input_path "$input_path"
    done
done