FROM java:8-jre-alpine

RUN apk --no-cache add bash

RUN wget -qO- http://mirrors.ocf.berkeley.edu/apache/zeppelin/zeppelin-0.6.0/zeppelin-0.6.0-bin-netinst.tgz | tar zxv -C /
RUN ln -nsf /zeppelin-* /zeppelin
RUN /zeppelin/bin/install-interpreter.sh --name md,jdbc

ENTRYPOINT /zeppelin/bin/zeppelin.sh

