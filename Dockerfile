FROM java:8-jre-alpine

RUN apk --no-cache add bash

RUN wget -qO- http://kevin.risden.net/download/zeppelin-6.0.0-SNAPSHOT.tar.gz | tar zxv -C /
RUN ln -nsf /zeppelin-*-SNAPSHOT /zeppelin

ENTRYPOINT /zeppelin/bin/zeppelin.sh

