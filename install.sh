cp /etc/apt/sources.list etc/apt/sources.list_bak
#sed -i 's/ports.ubuntu.com/mirrors.tuna.tsinghua.edu.cn/g' /etc/apt/sources.list
sed -i 's/ports.ubuntu.com/mirrors.ustc.edu.cn/g' /etc/apt/sources.list
apt update
apt upgrade -y

# Install cuda toolkit
dpkg -i cuda-repo-l4t-10-0-local-10.0.166_1.0-1_arm64.deb
apt-key add /var/cuda-repo-10-0-local-10.0.166/7fa2af80.pub
dpkg -i /var/cuda-repo-10-0-local-10.0.166/cuda-*

#install cudnn
dpkg -i libcudnn7-dev_7.3.1.28-1+cuda10.0_arm64.deb libcudnn7-doc_7.3.1.28-1+cuda10.0_arm64.deb

#install tensorRT
dpkg -i libnvinfer5_5.0.6-1+cuda10.0_arm64.deb libnvinfer-dev_5.0.6-1+cuda10.0_arm64.deb libnvinfer-samples_5.0.6-1+cuda10.0_all.deb

#install libopencv
dpkg -i libopencv_3.3.1-2-g31ccdfe11_arm64.deb libopencv-dev_3.3.1-2-g31ccdfe11_arm64.deb libopencv-python_3.3.1-2-g31ccdfe11_arm64.deb libopencv-samples_3.3.1-2-g31ccdfe11_arm64.deb

#install libvisionworks
dpkg -i libvisionworks-repo_1.6.0.500n_arm64.deb libvisionworks-sfm-repo_0.90.4_arm64.deb libvisionworks-tracking-repo_0.88.2_arm64.deb

#install TRT python api
dpkg -i  python3-libnvinfer_5.0.6-1+cuda10.0_arm64.deb python3-libnvinfer-dev_5.0.6-1+cuda10.0_arm64.deb  python-libnvinfer_5.0.6-1+cuda10.0_arm64.deb python-libnvinfer-dev_5.0.6-1+cuda10.0_arm64.deb  tensorrt_5.0.6.3-1+cuda10.0_arm64.deb  uff-converter-tf_5.0.6-1+cuda10.0_arm64.deb

# update and fix some dependency
apt update && apt install -f

#install  graphsurgeon
dpkg -i graphsurgeon-tf_5.0.6-1+cuda10.0_arm64.deb

# software links
ln -s /usr/local/cuda-10.0 /usr/local/cuda

