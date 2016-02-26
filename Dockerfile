FROM alpine

RUN apk update
RUN apk add s6-rc
RUN mkdir -p /services/active
COPY services /services/all
RUN ln -s /services/all/syslogd /services/active/syslogd
RUN ln -s /services/all/crond /services/active/crond

CMD ["/bin/s6-svscan", "/services/active"]
