FROM pytorch/pytorch:1.5.1-cuda10.1-cudnn7-runtime

RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -
RUN apt update && \
    apt install -y bash git git-lfs nodejs
RUN git clone https://github.com/NVIDIA/apex.git && cd apex && python setup.py install --cuda_ext --cpp_ext
RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir mkl transformers \
    jupyterlab sklearn black pylint tqdm tensorboardX

WORKDIR /workspace

CMD ["/bin/bash"]
