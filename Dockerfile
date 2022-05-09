FROM amd64/ubuntu:20.04

ARG SOURCE_DIR="."

RUN DEBIAN_FRONTEND=noninteractive apt-get update --fix-missing && \ 
	DEBIAN_FRONTEND=noninteractive apt-get dist-upgrade -y && \
	DEBIAN_FRONTEND=noninteractive apt-get install -y build-essential gcc wget git python-lxml \
        libgl1-mesa-glx procps libsasl2-dev \
        wget curl gnupg lsof xvfb libxi6 && \
	DEBIAN_FRONTEND=noninteractive apt-get clean


# ANACONDA
RUN mkdir -p /root/.conda/

RUN wget --quiet https://repo.anaconda.com/miniconda/Miniconda3-py39_4.10.3-Linux-x86_64.sh -O /miniconda.sh && \
    /bin/bash /miniconda.sh -b -p /opt/conda && \
    ln -s /opt/conda/etc/profile.d/conda.sh /etc/profile.d/ && \
    rm /miniconda.sh

RUN /opt/conda/bin/conda init bash

ENV PATH /opt/conda/bin:$PATH

RUN conda install -c defaults -c conda-forge mamba conda-pack

ADD environment.yml /
RUN /opt/conda/bin/mamba env create --name scclust --file /environment.yml

RUN mkdir /data
COPY data /data

RUN mkdir -p /scripts
COPY scripts /scripts

WORKDIR /scripts

ENTRYPOINT ["/bin/bash", "/scripts/run_all.sh"]
