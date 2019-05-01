FROM centos:centos7
LABEL maintainer="blush@blsystems.ca"

WORKDIR /usr/src/app

RUN yum -y makecache fast
RUN yum clean all && \
    yum -y install epel-release && \
    yum -y install \
    git \
    python36-httplib2 \
    python36-jinja2 \
    python36-keyczar \
    python36-paramiko \
    python36-pip \
    python36-setuptools \
    sshpass

COPY ansible/requirements.txt requirements.txt

RUN pip3.6 install -r requirements.txt && rm requirements.txt

RUN echo export ANSIBLE_CONFIG=`pwd`/ansible.cfg >> /root/.bashrc

CMD ["ansible", "--version"]