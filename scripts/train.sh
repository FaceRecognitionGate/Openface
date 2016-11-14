#!/bin/bash
# Openface align command on our dataset
OPENFACE_DIR=/root/openface
RAW_PICS=/opt/data/raw
FEATURES_DIR=/opt/data/features
ALIGNED_PICS=/opt/data/aligned

for N in {1..8};
do
    $OPENFACE_DIR/align-dlib.py $RAW_PICS align outerEyesAndNose $ALIGNED_PICS --size 96 &
done \
&& $OPENFACE_DIR/batch-represent/main.lua -outDir $FEATURES_DIR -data $ALIGNED_PICS \
&& /demos/classifier.py train $FEATURES_DIR
