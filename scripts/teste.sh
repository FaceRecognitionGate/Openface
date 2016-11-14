#!/bin/bash
# Checks if a given user is allowed to enter
$OPT=/opt/data

$OPT/openface/classifier.py infer $OPT/features/classifier.pkl $OPT/examples/compare.jpeg > result.txt
