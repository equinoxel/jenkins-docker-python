FROM jenkins/jenkins

USER root

# -- Install Pipenv:
RUN apt update
RUN apt install software-properties-common python-software-properties -y
RUN add-apt-repository ppa:pypa/ppa -y
RUN apt update
RUN apt install pipenv -y

ENV LC_ALL C.UTF-8
ENV LANG C.UTF-8


RUN apt update \
    && add-apt-repository ppa:pypa/ppa -y \
    && apt update \
    && apk add --no-cache --update \
    python \
    python-dev \
    py-pip \
    build-base \
    && pip install virtualenv pipenv \
    && rm -rf /var/cache/apk/*

USER jenkins
