#!/bin/bash

set -e

Xvfb :99 &
export DISPLAY=:99

mkdir -p work


############################################################
# process KPCLOH.Pre.Tumor1
mkdir -p /wd/work/KPCLOH.Pre.Tumor1.SP.results
/opt/conda/bin/conda run --no-capture-output -n scclust \
    Rscript ./run_KPCLOH.Pre.Tumor1.SP.R

/opt/conda/bin/conda run --no-capture-output -n scclust \
    scgview -d /wd/work/KPCLOH.Pre.Tumor1.SP.results \
        -o /wd/work/KPCLOH.Pre.Tumor1.SP.results.png \
        -t "KPCLOH.Pre.Tumor1" -r 300


############################################################
# process KPCLOH.Pre.Tumor3
mkdir -p /wd/work/KPCLOH.Pre.Tumor3.SP.results
/opt/conda/bin/conda run --no-capture-output -n scclust \
    Rscript ./run_KPCLOH.Pre.Tumor3.SP.R

/opt/conda/bin/conda run --no-capture-output -n scclust \
    scgview -d /wd/work/KPCLOH.Pre.Tumor3.SP.results \
        -o /wd/work/KPCLOH.Pre.Tumor3.SP.results.png \
        -t "KPCLOH.Pre.Tumor3" -r 300


############################################################
# process KPCLOH.Tumor1
mkdir -p /wd/work/KPCLOH.Tumor1.DP.SP.results
/opt/conda/bin/conda run --no-capture-output -n scclust \
    Rscript ./run_KPCLOH.Tumor1.DP.SP.R

/opt/conda/bin/conda run --no-capture-output -n scclust \
    scgview -d /wd/work/KPCLOH.Tumor1.DP.SP.results \
        -o /wd/work/KPCLOH.Tumor1.DP.SP.results.png \
        -t "KPCLOH.Tumor1" -r 300


############################################################
# process KPCLOH.Tumor2
mkdir -p /wd/work/KPCLOH.Tumor2.DP.SP.results
/opt/conda/bin/conda run --no-capture-output -n scclust \
    Rscript ./run_KPCLOH.Tumor2.DP.SP.R

/opt/conda/bin/conda run --no-capture-output -n scclust \
    scgview -d /wd/work/KPCLOH.Tumor2.DP.SP.results \
        -o /wd/work/KPCLOH.Tumor2.DP.SP.results.png \
        -t "KPCLOH.Tumor2" -r 300
