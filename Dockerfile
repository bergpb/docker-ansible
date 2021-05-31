FROM debian:buster-slim

RUN apt-get update &&\
    apt-get install ansible openssh-server -y

RUN apt-get clean