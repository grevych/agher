FROM ubuntu:16.04

# Ubuntu sides with libav, I side with ffmpeg.
# run    echo "deb http://ppa.launchpad.net/jon-severinsson/ffmpeg/ubuntu quantal main" >> /etc/apt/sources.list
# run    apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 1DB8ADC1CFCA9579

RUN apt-get update
RUN apt-get install -y -q wget curl
RUN apt-get install -y -q build-essential
RUN apt-get install -y -q cmake
RUN apt-get install -y -q git pkg-config
RUN apt-get install -y -q libavformat-dev libavcodec-dev libavfilter-dev libswscale-dev
RUN apt-get install -y -q libjpeg-dev libpng-dev libtiff-dev libjasper-dev zlib1g-dev libopenexr-dev libxine2-dev libeigen3-dev libtbb-dev
RUN apt-get install -y -q python3.5 python3.5-dev
RUN apt-get install -y -q python3-pip
RUN pip3 install numpy
# add    build_opencv.sh    /build_opencv.sh
# run    /bin/sh /build_opencv.sh
# run    rm -rf /build_opencv.sh

COPY ./build_opencv.sh /build_opencv.sh
RUN /bin/bash build_opencv.sh

COPY ./install_anaconda.sh /install_anaconda.sh
RUN /bin/bash install_anaconda.sh agher

COPY ./run.sh /run.sh
RUN chmod u+x /run.sh

CMD ["/bin/bash", "-c", "./run.sh", "agher"]


