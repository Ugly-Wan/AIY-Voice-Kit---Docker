FROM resin/rpi-raspbian:stretch
MAINTAINER "Ugly-Wan" <oliver@mcblain.co.uk>

RUN [ "cross-build-start" ]

RUN apt-get update
RUN apt-get install -y \
  curl \
  alsa-utils \
  git \
  python3 \
  python3-dev \
  && rm -rf /var/lib/apt/lists/*

RUN cd ~
RUN git clone -b  https://github.com/google/aiyprojects-raspbian.git
RUN cd ~/AIY-projects-python

RUN python3 -m venv env
RUN env/bin/python -m pip install --upgrade pip rpi.gpio numpy setuptools wheel
  
RUN [ "cross-build-end" ]  
 
CMD /bin/bash ; sleep infinity
