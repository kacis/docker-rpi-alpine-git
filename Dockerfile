FROM ctarwater/armhf-alpine-rpi-base

MAINTAINER kacis.m@gmail.com

RUN apk --update add git openssh && \
    rm -rf /var/lib/apt/lists/* && \
    rm /var/cache/apk/*

VOLUME /git
WORKDIR /git

ENTRYPOINT ["git"]
CMD ["--help"]
