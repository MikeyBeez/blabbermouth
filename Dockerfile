# To build:
# docker build -t myhead .
FROM ubuntu:18.04
MAINTAINER Mike Bee mbonsign@gmail.com

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get -y update
RUN apt-get -y install wget
RUN apt-get -y install bc
RUN apt-get -y install curl
RUN apt-get -y install git
RUN apt-get -y install dpkg
RUN apt-get -y install software-properties-common
RUN apt-get -y install cmake
RUN apt-get -y install build-essential

RUN mkdir ~/gitbase
WORKDIR ~/gitbase
RUN git clone  https://github.com/MikeyBeez/blabbermouth.git

