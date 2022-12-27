#!/usr/bin/env bash
# -*- coding:utf-8 -*-

python3 yolov5.7/export.py \
    --weights runs/train/traffic_lights_640/weights/best.pt \
    --include engine \
    --device 0 \
    --dynamic