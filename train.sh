#!/usr/bin/env bash
# -*- coding:utf-8 -*-

epochs=500
img_size=640
batch_size=12
label_smoothing=0.0

python3 yolov5.7/train.py \
    --weights '' \
    --cfg yaml/model.traffic_light.yaml \
    --data yaml/data.traffic_light.yaml \
    --hyp yaml/hyp.traffic_light.yaml \
    --label-smoothing $label_smoothing \
    --batch-size $batch_size \
    --img-size $img_size \
    --project runs/train \
    --epochs $epochs \
    --seed $epochs \
    --optimizer 'SGD' \
    --device 0 \
    --name traffic_light_$img_size