FROM pytorch/pytorch:1.5-cuda10.1-cudnn7-devel 
ENV LC_ALL=C.UTF-8
RUN apt-get upgrade && apt-get update && apt-get install git
RUN pip install pytorch-transformers==1.2.0 pandas black pylint sklearn flask tqdm fairseq matplotlib torchaudio==0.5.0 numpy librosa numba==0.48
RUN apt-get install libsndfile1
EXPOSE 8888
WORKDIR /workspace 

