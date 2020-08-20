FROM pytorch/pytorch:1.6.0-cuda10.1-cudnn7-devel

RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -
RUN apt update && \
    apt install -y bash git git-lfs nodejs
RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir mkl transformers \
    jupyterlab sklearn black pylint tqdm tensorboardX

WORKDIR /workspace

CMD ["/bin/bash"]
