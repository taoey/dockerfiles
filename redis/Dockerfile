# centos7 redis

FROM centos:centos7
MAINTAINER "taoey"

# set time zone
ARG TZ='Asia/Shanghai'
ENV TZ ${TZ}


RUN yum -y install net-tools.x86_64 && yum -y install wget
RUN yum -y install gcc automake autoconf libtool make  && yum -y install gcc gcc-c++

# install redis
RUN mkdir /soft
WORKDIR /soft
RUN wget http://download.redis.io/releases/redis-5.0.8.tar.gz && tar zxvf redis-5.0.8.tar.gz && mv redis-5.0.8 redis

WORKDIR /soft/redis
RUN make
WORKDIR /soft/redis/src
RUN make install PREFIX=/usr/local/redis

WORKDIR /soft/redis
RUN mkdir /usr/local/redis/etc && mv redis.conf /usr/local/redis/etc

EXPOSE 6379/tcp

WORKDIR /usr/local/redis
RUN mkdir data

CMD /bin/bash


# how to build
# docker build -t taoey/redis:latest .

# how to run
# docker run -itd -p 6379:6379 --name redis-tao taoey/redis:latest

# go in docker container
# docker exec -it redis-tao /bin/bash