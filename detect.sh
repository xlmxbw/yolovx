#!/usr/bin/env bash
# -*- coding:utf-8 -*-

python3 yolov5.7/detect.py \
    --weights result/weights/best.pt \
    --source datasets/images \
    --data yaml/data.traffic_light.yaml \
    --img-size 640 \
    --device 'cpu' \
    --save-txt \
    --project runs/detect \
    --name 'best'