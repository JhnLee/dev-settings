FROM pytorch/pytorch:1.5.1-cuda10.1-cudnn7-runtime

RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -
RUN apt update && \
    apt install -y bash git git-lfs nodejs

RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir mkl torch==1.5.1 transformers \
    jupyterlab sklearn black pylint tqdm

WORKDIR /workspace

CMD ["/bin/bash"]
