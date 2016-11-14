#!/bin/bash
# Checks if a given user is allowed to enter
OPT=/opt/data

$OPT/code/openface/classifier.py infer $OPT/features/classifier.pkl $OPT/examples/compare.jpeg > $OPT/result.txt
