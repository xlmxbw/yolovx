#!/usr/bin/env bash
# -*- coding:utf-8 -*-

model='.lite'
module='06'
epochs=1000
img_size=640
batch_size=32
label_smoothing=0.0


python3 yolov5.7$model/train.py \
    --weights '' \
    --cfg yaml/model.$module.yaml \
    --data yaml/data.traffic_light.yaml \
    --hyp yaml/hyp.traffic_light.yaml \
    --label-smoothing $label_smoothing \
    --batch-size $batch_size \
    --img-size $img_size \
    --optimizer 'AdamW' \
    --project run/train \
    --epochs $epochs \
    --seed $epochs \
    --device 0 \
    --name traffic_light_model$model.$module
