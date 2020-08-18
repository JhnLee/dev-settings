FROM pytorch/pytorch:1.4-cuda10.1-cudnn7-devel 
ENV LC_ALL=C.UTF-8
RUN git clone https://github.com/NVIDIA/apex.git && cd apex && python setup.py install --cuda_ext     --cpp_ext
RUN pip install transformers sklearn tensorboardX nltk
WORKDIR /workspace           
