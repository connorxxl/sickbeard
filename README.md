# Sickbeard for Docker
This image (like all other of my images) is created to run on Synology Docker. I've tried to keep the images clean (so proper config volumes and always the same external volumes).

Image is based on Ubuntu 14.04 LTS.

### Volumes
- /config
- /volumes/complete
- /volumes/tvseries

(Config volume is hardcoded into startup CMD.)

### Ports
- 8081

### Run
Image can be run as follows:
```
docker run --name sickbeard \
    -p 8081:8081 \
    -v <your directory>:/config \
    -v <your directory>:/volumes/complete \
    -v <your directory>:/volumes/tvseries \
    connorxxl/sickbeard
```
