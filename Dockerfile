FROM centos:8

LABEL CentOS="8"
LABEL OpenSSH="7.4p1-21.el7"
LABEL Name="CentOS OpenSSH"
LABEL VERSION="2"

EXPOSE 22

RUN yum -y erase vim-minimal iputils libss && \
    yum -y install openssh openssh-server openssh-clients && \
    yum -y clean all

ADD start.sh /start.sh

RUN chmod +x /start.sh

CMD /start.sh
