FROM java:8-jre-alpine

RUN apk --no-cache add bash

RUN wget -qO- http://apache.spinellicreations.com/zeppelin/zeppelin-0.6.0/zeppelin-0.6.0-bin-all.tgz | tar zxv -C /
RUN ln -nsf /zeppelin-* /zeppelin

ENTRYPOINT /zeppelin/bin/zeppelin.sh

