FROM rustlang/rust:nightly-slim

WORKDIR /root

COPY ./config  /usr/local/cargo/config
RUN echo \
    deb http://mirrors.163.com/debian/ buster main contrib non-free\
    deb http://mirrors.163.com/debian/ buster-updates main contrib non-free\
    deb http://mirrors.163.com/debian/ buster-backports main contrib non-free\
    deb http://mirrors.163.com/debian-security buster/updates main contrib non-free\
    > /etc/apt/sources.list
RUN apt-get update\
    && apt-get install -y build-essential\
    && apt-get install -y pkg-config\
    && apt-get install -y libssl-dev\
    && apt-get install -y openssl\
    && apt-get install -y python3.7 python3.7-dev python3.7-distutils\
    && apt-get install -y python3-pip

