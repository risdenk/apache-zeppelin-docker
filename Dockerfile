FROM java:8-jre-alpine

RUN wget -qO- http://kevin.risden.net/download/zeppelin-6.0.0-SNAPSHOT.tar.gz | tar zxv -C / && sh -c "rm -rf /opt/zeppelin-*-SNAPSHOT/conf /opt/zeppelin-*-SNAPSHOT/local-repo /opt/zeppelin-*-SNAPSHOT/notebook"

