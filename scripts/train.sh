#!/bin/bash
RAW_PICS=/opt/data/raw
FEATURES_DIR=/opt/data/features
ALIGNED_PICS=/opt/data/aligned
OPENFACE_DIR=$HOME/openface

for N in {1..8};
do
    $OPENFACE_DIR/util/align-dlib.py $RAW_PICS align outerEyesAndNose $ALIGNED_PICS --size 96 &
done \
&& $OPENFACE_DIR/batch-represent/main.lua -outDir $FEATURES_DIR -data $ALIGNED_PICS \
&& $OPENFACE_DIR/demos/classifier.py train $FEATURES_DIR
