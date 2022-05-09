#!/bin/bash

export WD=$(pwd)

docker run -it \
    -v ${WD}:/wd \
    krasnitzlab/p53-loh-nature-paper:1.0.0
