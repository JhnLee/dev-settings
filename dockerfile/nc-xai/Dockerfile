FROM pytorch/pytorch:1.2-cuda10.0-cudnn7-devel
ENV LC_ALL=C.UTF-8
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y \
    nodejs git

RUN pip install --upgrade pip && \ 
    pip install jupyterlab jupyterhub pandas sklearn black && \
    pip install git+https://github.com/ildoonet/pytorch-gradual-warmup-lr.git

RUN jupyter labextension install @jupyter-widgets/jupyterlab-manager @jupyterlab/latex @jupyterlab/git  
RUN jupyter lab build

EXPOSE 8888 5000 6006
WORKDIR /workspace


