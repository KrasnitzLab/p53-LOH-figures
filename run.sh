#!/bin/bash

export WD=$(pwd)

docker run -it \
    -v ${WD}:/wd \
    krasnitzlab/p53-loh-nature-figures:1.0.1
