FROM centos:7
MAINTAINER Gob Bluth "gob@example.com"

ENV LANG en_US.UTF-8

RUN yum -y install tar rsync openssh-server passwd git
RUN ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key -N ''

RUN mkdir -p /root/.ssh/
COPY authorized_keys /root/.ssh/authorized_keys

EXPOSE 22
CMD [ "/usr/sbin/sshd", "-D", "-p", "22", "-o", "UseDNS=no", "-o", "UsePrivilegeSeparation=no", "-o", "MaxAuthTries=60" ]

VOLUME /opt/kitchen
VOLUME /opt/verifier
