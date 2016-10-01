FROM openjdk:8-jre-alpine

RUN apk --no-cache add bash

RUN wget -qO- http://apache.spinellicreations.com/zeppelin/zeppelin-0.6.1/zeppelin-0.6.1-bin-all.tgz | tar zxv -C /
RUN ln -nsf /zeppelin-* /zeppelin

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT /entrypoint.sh

