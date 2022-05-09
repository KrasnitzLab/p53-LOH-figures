#!/bin/bash

set -e

mkdir -p work

mkdir -p /wd/work/Pre.2966.results.keepboundaries
/opt/conda/bin/conda run --no-capture-output -n scclust \
    Rscript ./run_mm19_pre_2966.R


mkdir -p /wd/work/Pre.TWO.results.keepboundaries
/opt/conda/bin/conda run --no-capture-output -n scclust \
    Rscript ./run_mm19_pre_two.R


mkdir -p /wd/work/Tumor.347.results.keepboundaries
/opt/conda/bin/conda run --no-capture-output -n scclust \
    Rscript ./run_mm19_tumor_347.R


mkdir -p /wd/work/Tumor.356.results.keepboundaries
/opt/conda/bin/conda run --no-capture-output -n scclust \
    Rscript ./run_mm19_tumor_356.R


Xvfb :99 &

export DISPLAY=:99

/opt/conda/bin/conda run --no-capture-output -n scclust \
    scgview -d /wd/work/Pre.2966.results.keepboundaries \
        -o /wd/work/Pre.2966.results.png \
        -t "Pre.2966" -r 300

/opt/conda/bin/conda run --no-capture-output -n scclust \
    scgview -d /wd/work/Pre.TWO.results.keepboundaries \
        -o /wd/work/Pre.TWO.results.png \
        -t "Pre.TWO" -r 300

/opt/conda/bin/conda run --no-capture-output -n scclust \
    scgview -d /wd/work/Tumor.347.results.keepboundaries \
        -o /wd/work/Tumor.347.results.png \
        -t "Tumor.347" -r 300

/opt/conda/bin/conda run --no-capture-output -n scclust \
    scgview -d /wd/work/Tumor.356.results.keepboundaries \
        -o /wd/work/Tumor.356.results.png \
        -t "Tumor.356" -r 300
