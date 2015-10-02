FROM ubuntu:trusty

MAINTAINER connorxxl <christian.flaig@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get -q update && \
    apt-get install -y python python-cheetah git-core && \
    git clone git://github.com/midgetspy/Sick-Beard.git /opt/sickbeard && \
    apt-get -y autoremove && \
    apt-get clean

RUN mkdir -p /config && \
    mkdir -p /volumes/complete && \
    mkdir -p /volumes/tvseries

EXPOSE 8081

VOLUME ["/config"]
VOLUME ["/volumes/complete"]
VOLUME ["/volumes/tvseries"]

ENTRYPOINT ["python2", "/opt/sickbeard/SickBeard.py"]
CMD ["--datadir=/volumes/config"]
