FROM fedora:latest
LABEL description="NFS Server Docker Image Based on Fedora"
MAINTAINER habbdt@gmail.com

USER root
WORKDIR /root

ADD run_nfs /usr/local/bin/run_nfs.sh
ADD index.html /tmp/index.html

RUN yum update -y && \
    yum install -y rpcbind nfs-utils /usr/bin/ps && \
    mkdir -p /exports && \
    chmod +x /usr/local/bin/run_nfs.sh && \
    chmod 644 /tmp/index.html && \
    chmod -R 777 /etc/exports /var/lib/nfs /var/run /exports && \
    rm -rf /var/cache/dnf

EXPOSE 111/udp 111/tcp 2049/tcp 20048/tcp
ENTRYPOINT ["sh", "/usr/local/bin/run_nfs.sh", "/exports"]