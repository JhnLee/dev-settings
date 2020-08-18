FROM ufoym/deepo:tensorflow

RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y \
    nodejs git git-lfs

RUN pip install --upgrade pip && \
    pip install jupyterlab jupyterhub 

RUN jupyter labextension install @jupyter-widgets/jupyterlab-manager @jupyterlab/latex 
RUN jupyter lab build

WORKDIR /data
