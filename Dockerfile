FROM alpine:3.5

MAINTAINER Loïc Pauletto <loic.pauletto@gmail.com>
MAINTAINER Quentin de Longraye <quentin@dldl.fr>

RUN apk add --no-cache --virtual --update bash py-pip make wget ca-certificates ttf-dejavu openjdk8-jre graphviz \
    && pip install --upgrade pip \
    && pip install sphinx sphinx_rtd_theme sphinxcontrib-plantuml sphinx_autobuild

RUN wget http://downloads.sourceforge.net/project/plantuml/plantuml.jar -P /opt/ \
    && echo -e '#!/bin/sh -e\njava -jar /opt/plantuml.jar "$@"' > /usr/local/bin/plantuml \
    && chmod +x /usr/local/bin/plantuml

COPY ./server.py /opt/sphinx-server/
COPY ./.sphinx-server.yml /opt/sphinx-server/

#WORKDIR /docs
