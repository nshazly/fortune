FROM ubuntu:bionic

RUN apt-get update ; apt-get -y install fortune perl

WORKDIR /app

ADD fortuneloop.sh .
ADD template.html .

ENTRYPOINT /app/fortuneloop.sh

