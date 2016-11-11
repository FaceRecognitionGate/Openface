#!/bin/bash
# Openface align command on our dataset

RAW_PICS=/opt/raw
ALIGNED_PICS=/opt/aligned

for N in {1..8};
do
    /root/openface/align-dlib.py $RAW_PICS align outerEyesAndNose $ALIGNED_PICS --size 96 & done

