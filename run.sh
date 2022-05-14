#!/bin/bash

export WD=$(pwd)

docker run -it \
    -v ${WD}:/wd \
    krasnitzlab/p53-loh-figures:1.0.2
