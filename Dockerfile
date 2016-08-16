FROM java:8-jre-alpine

RUN apk --no-cache add bash

RUN wget -qO- http://ftp.wayne.edu/apache/zeppelin/zeppelin-0.6.1/zeppelin-0.6.1-bin-netinst.tgz | tar zxv -C /
RUN ln -nsf /zeppelin-* /zeppelin

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT /entrypoint.sh

