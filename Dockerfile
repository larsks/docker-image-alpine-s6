FROM alpine
MAINTAINER http://github.com/larsks/docker-image-alpine-s6

RUN apk update
RUN apk add s6-rc
COPY services /services

CMD ["/bin/s6-svscan", "/services"]
