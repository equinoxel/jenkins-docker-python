FROM jenkins/jenkins

USER root

ENV LC_ALL C.UTF-8
ENV LANG C.UTF-8


RUN apt update \
    && apt install \
    python \
    python-dev \
    python-pip -y \
    && pip install virtualenv pipenv \
    && rm -rf /var/cache/apk/*

USER jenkins
