FROM resin/rpi-raspbian:latest
MAINTAINER "Ugly-Wan" <oliver@mcblain.co.uk>

RUN apt-get update
RUN apt-get install -y \
  curl \
  alsa-utils \
  && rm -rf /var/lib/apt/lists/*
  
 
CMD /bin/bash ; sleep infinit
