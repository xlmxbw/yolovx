#!/usr/bin/env bash
# -*- coding:utf-8 -*-

python3 yolov5.7/detect.py \
    --weights runs/train/traffic_light_6402/weights/best.pt \
    --source datasets/right \
    --data yaml/data.traffic_light.yaml \
    --img-size 640 \
    --device 'cpu' \
    --save-txt \
    --dnn \
    --project runs/detect \
    --name single_light_640