FROM java:8-jdk-alpine

ADD scripts /opt/scripts

RUN /opt/scripts/install_maven.sh && apk --no-cache add --virtual build-deps git && git clone https://github.com/apache/incubator-zeppelin.git /opt/zeppelin-src && cd /opt/zeppelin-src && mvn clean package -Pbuild-distr -Pspark-1.6 -Ppyspark -DskipTests && sh -c "tar zxvf /opt/zeppelin-src/zeppelin-distribution/target/zeppelin-*-SNAPSHOT.tar.gz -C /opt/ && rm -rf /opt/zeppelin-src /opt/zeppelin-*-SNAPSHOT/conf /opt/zeppelin-*-SNAPSHOT/local-repo /opt/zeppelin-*-SNAPSHOT/notebook /usr/share/*maven* /root/.m2 && mkdir -p /opt/zeppelin_data" && apk del build-deps
