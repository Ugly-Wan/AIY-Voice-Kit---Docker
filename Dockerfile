FROM resin/rpi-raspbian:latest
MAINTAINER "Ugly-Wan" <oliver@mcblain.co.uk>

alsa-utils

RUN apt-get update \
  && apt-get install -y curl \
  && apt-get install -y alsa-utils
  && rm -rf /var/lib/apt/lists/*
  
  
CMD /bin/bash ; sleep infinit
