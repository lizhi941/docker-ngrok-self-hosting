FROM centos:7
MAINTAINER lizhi <hello-168@163.com>

RUN yum update -y && \
    yum -y install git make go openssl gcc && \
    rm -rf /var/cache/yum/*

ADD build.sh /
RUN chmod +x /build.sh

ENV DOMAIN **None**
ENV TUNNEL_PORT 4443
ENV HTTP_PORT 80
ENV HTTPS_PORT 443

VOLUME ["/release"]

CMD ["/build.sh"]
