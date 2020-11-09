# Argruments from FROM
FROM nvidia/cuda:10.1-cudnn7-devel-ubuntu18.04

ENV DEBIAN_FRONTEND=noninteractive

# install basic environment
RUN rm -rf /var/lib/apt/lists/* && \
    apt-get clean && \
    apt-get autoremove

# change mirrors in ubuntu server: us to korea
RUN sed -i 's/security.ubuntu.com/ftp.daum.net/g' /etc/apt/sources.list && \
    sed -i 's/us.archive.ubuntu.com/ftp.daum.net/g' /etc/apt/sources.list && \
    sed -i 's/archive.ubuntu.com/ftp.daum.net/g' /etc/apt/sources.list

ARG ADDITIONAL_PACKAGE

RUN apt-get update && apt-get install -y --no-install-recommends \
        build-essential \
        wget \
        tar \
        libgomp1 \
        python3-pip \
        ca-certificates\
        gcc \
        git \
        libpq-dev \
        make \
        mercurial \
        cmake \
        unzip \
        yasm \
        pkg-config \
        libswscale-dev \
        libtbb2 \
        libtbb-dev \
        libjpeg-dev \
        libpng-dev \
        libtiff-dev \
        libavformat-dev \
        python \
        python3 \
        python3-dev \
        python3-numpy \
        python-numpy \
        libgtk2.0-dev \
        python-pip \
        python3-pip \
        python-setuptools \
        python3-setuptools \
        vim \
        rsync \
        python3-tk \
        sudo \
        curl \
        wget \
        apt \
        base-files \
        libapt-pkg5.0 \
        libc-bin \
        libkmod2 \
        libudev1 \
        multiarch-support \
        systemd-sysv \
        lsb-release \
        command-not-found \
        openssh-server \
        iptables \
        screen \
        ${ADDITIONAL_PACKAGE} \
        && apt-mark hold libcudnn7 \
        && rm -rf /var/lib/apt/lists/*

# pip & pip3 upgrade
RUN pip3 install --upgrade pip && \
    pip install --upgrade pip

RUN pip3 install numpy pandas jupyter notebook

# add enviroments setting for utf-8 encoding in python
RUN echo export PYTHONIOENCODING=utf-8 >> ~/.bashrc && \
    export PYTHONIOENCODING=utf-8

# set up your account password here
ARG user
ARG uid
ARG gid
ARG passwd
ARG display

RUN echo "$passwd"

# Add new user with our credentials
ENV USERNAME ${user}

# Add sudoer s & check /etc/sudoers file
RUN echo "$USERNAME     ALL=NOPASSWD:       ALL" >> /etc/sudoers
RUN cat /etc/sudoers

# Add new user with our credentials
RUN useradd -m $USERNAME && \
        echo "$USERNAME:$passwd" | chpasswd && \
        usermod --shell /bin/bash $USERNAME && \
        usermod --uid ${uid} $USERNAME && \
        groupmod --gid ${gid} $USERNAME

# set up default user & home directory
USER ${user}
WORKDIR /home/${user}

# print build parameter
RUN echo "user: $user"
RUN echo "uid : $uid"
RUN echo "gid : $gid"
RUN echo "USERNAME : $USERNAME"
RUN echo "passwd : $passwd"

# set up root passwd
RUN echo "root:$passwd" | sudo chpasswd

# ssh setting
RUN mkdir /home/${user}/.ssh
RUN sudo mkdir /var/run/sshd

# open port
EXPOSE 22

# X11 Forward setting
RUN sudo sed -i 's/#   ForwardX11 no/    ForwardX11 yes/g' /etc/ssh/ssh_config
RUN sudo cat /etc/ssh/ssh_config

# DISPLAY option setting
ENV DISPLAY ${display}
RUN echo "export DISPLAY=unix${display}" >> ~/.bashrc
RUN echo "display parameter : ${display}"

# attach local storate
RUN mkdir /home/${user}/Documents

# start ssh
CMD ["sudo", "/usr/sbin/sshd", "-D"]
