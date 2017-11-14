#!/bin/bash

# cuda
echo "install cuda v8.0"
wget https://developer.nvidia.com/compute/cuda/8.0/prod/local_installers/cuda_8.0.44_linux-run
chmod +x cuda_8.0.44_linux-run
sudo ./cuda_8.0.44_linux-run
rm ./cuda_8.0.44_linux-run

# add path
export PATH=/usr/local/cuda-8.0/bin:$PATH
export LD_LIBRARY_PATH=/usr/lib/nvidia-current:/usr/local/cuda/lib64:/usr/local/cuda/lib:$LD_LIBRARY_PATH

echo "Check if finish install cuda v8.0"
cd ~/NVIDIA_CUDA-8.0_Samples/1_Utilities/deviceQuery
make
./deviceQuery
sleep 10

# cudnn
echo "install cudnn v5.1"
cd ~
wget https://raw.githubusercontent.com/noootown/google_drive_downloader/master/get.py
python get.py --url https://drive.google.com/file/d/1sWBTR_swYSfLHgh31U_i9jiQ250uqDh-
rm get.py
rm cookie
tar xzf file
sudo cp -P cuda/include/cudnn.h /usr/local/cuda/include
sudo cp -P cuda/lib64/libcudnn* /usr/local/cuda/lib64
sudo chmod a+r /usr/local/cuda/include/cudnn.h /usr/local/cuda/lib64/libcudnn*
rm file

# tensorflow
echo "install tensorflow v1.0.0"
sudo apt-get -y install openjdk-8-jdk git python-dev python3-dev python-numpy python3-numpy python-six python3-six build-essential python-pip python3-pip python-virtualenv swig python-wheel python3-wheel libcurl3-dev libcupti-dev
sudo pip install tensorflow-gpu==1.0.0
echo "tensorflow version:"
python -c "import tensorflow as tf; print tf.__version__"

