FROM centos
USER root

RUN yum -y install /usr/bin/ps nfs-utils && yum clean all 
RUN mkdir -p /exports
ADD run_nfs /usr/local/bin/run_nfs.sh
ADD index.html /tmp/index.html
RUN chmod 644 /tmp/index.html
RUN chmod +x /usr/local/bin/run_nfs.sh
RUN chmod -R 777 /etc/exports /var/lib/nfs /var/run /exports

EXPOSE 111/udp 111/tcp 2049/tcp 20048/tcp
ENTRYPOINT ["sh", "/usr/local/bin/run_nfs.sh", "/exports"]