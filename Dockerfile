FROM openjdk:8-jre-alpine

RUN apk --no-cache add bash

RUN wget -qO- http://mirror.cc.columbia.edu/pub/software/apache/zeppelin/zeppelin-0.7.3/zeppelin-0.7.3-bin-netinst.tgz | tar zxv -C /
RUN ln -nsf /zeppelin-* /zeppelin
RUN /zeppelin/bin/install-interpreter.sh --name md,jdbc

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT /entrypoint.sh

