#!/bin/bash

if [ $EUID -ne 0 ]; then
    echo Run this file as root
    exit
fi

apt-get update && sudo apt-get upgrade -y
apt-get install build-essential 
apt-get install cmake git unzip zip
apt-get install python-dev python3-dev python-pip python3-pip
apt-get install linux-headers-$(uname -r)

apt-get purge -y nvidia*
apt-get autoremove
apt-get autoclean
rm -rf /usr/local/cuda*

apt-key adv --fetch-keys http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/7fa2af80.pub

echo "deb https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64 /" | sudo tee /etc/apt/sources.list.d/cuda.list

apt-get update 
apt-get -o Dpkg::Options::="--force-overwrite" install -y cuda-10-1 cuda-drivers

if [ -f ~/.zshrc ]; then
   shell=~/.zshrc
elif [ -f ~/.bashrc ]; then
   shell=~/.bashrc
else
    echo Invalid shell environment
    exit
fi
echo 'export PATH=/usr/local/cuda-10.1/bin:$PATH' >> ${shell}
echo 'export LD_LIBRARY_PATH=/usr/local/cuda-10.1/lib64:$LD_LIBRARY_PATH' >> ${shell}
source ${shell} && ldconfig



