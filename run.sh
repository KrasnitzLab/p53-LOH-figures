#!/bin/bash

export WD=$(pwd)

mkdir -p work

docker run -it \
    -v ${WD}:/wd \
    krasnitzlab/p53-loh-nature-paper:latest \
    /scripts/run_all.sh
