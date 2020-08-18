FROM ufoym/deepo:pytorch-py36-cu101

RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -
RUN apt-get update && \
    apt-get install -y \
    build-essential sudo nodejs git git-lfs vim

RUN pip install --upgrade pip && \
    pip uninstall -y enum34 && \ 
    pip install jupyterlab jupyterhub pandas transformers tensorboard 

RUN jupyter labextension install @jupyter-widgets/jupyterlab-manager  
RUN jupyter lab build

ARG PASSWORD

RUN jupyter notebook --generate-config

RUN jupyter_sha=$(python -c "from notebook.auth import passwd; print(passwd('${PASSWORD}'))") && \
    echo "c.NotebookApp.password=u'$jupyter_sha'" >> ~/.jupyter/jupyter_notebook_config.py && \
    echo "c.NotebookApp.ip='0.0.0.0'" >> ~/.jupyter/jupyter_notebook_config.py && \
    echo "c.NotebookApp.open_browser=False" >> ~/.jupyter/jupyter_notebook_config.py

ENV LC_ALL=C.UTF-8

WORKDIR /workspace  
