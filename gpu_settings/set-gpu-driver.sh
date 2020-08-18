#!/bin/bash

sudo apt-get update && sudo apt-get upgrade -y
uname -m && cat /etc/*release
    sudo apt-get install build-essential 
sudo apt-get install cmake git unzip zip
sudo apt-get install python-dev python3-dev python-pip python3-pip
sudo apt-get install linux-headers-$(uname -r)

sudo apt-get purge nvidia*
sudo apt-get autoremove
sudo apt-get autoclean
sudo rm -rf /usr/local/cuda*

sudo apt-key adv --fetch-keys http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/7fa2af80.pub

echo "deb https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64 /" | sudo tee /etc/apt/sources.list.d/cuda.list

sudo apt-get update 
sudo apt-get -o Dpkg::Options::="--force-overwrite" install cuda-10-0 cuda-drivers


