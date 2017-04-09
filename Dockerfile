FROM openjdk:8-jre-alpine

ARG MIRROR=http://ftp.wayne.edu/apache
ARG VERSION=0.7.1

ENV APPDIR=/zeppelin

RUN apk --no-cache add bash \
  && mkdir -p $APPDIR && wget -qO- $MIRROR/zeppelin/zeppelin-$VERSION/zeppelin-$VERSION-bin-netinst.tgz \
   | tar -zxvC $APPDIR --strip-components=1

WORKDIR $APPDIR

RUN interpreters=' \
  md, \
  jdbc \
  ' \
  && bin/install-interpreter.sh --name $(echo $interpreters | tr -d '[[:space:]]')

CMD ["bin/zeppelin.sh"]
