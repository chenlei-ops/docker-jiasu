FROM alpine:latest

MAINTAINER 烂泥行天下 <ilanni@ilanni.com>
RUN rm -rf /var/cache/apk/* && \
    rm -rf /tmp/*
RUN apk update

#下载k8s

ENV K8S_VERSION=v1.16.4
ENV K8S_VERSION_URL=https://dl.k8s.io/{K8S_VERSION}/kubernetes-server-linux-amd64.tar.gz
RUN wget ${K8S_VERSION_URL}
