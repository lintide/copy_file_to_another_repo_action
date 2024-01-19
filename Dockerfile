FROM alpine

RUN apk update && \
    apk upgrade && \
    apk add git rsync git-lfs

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
