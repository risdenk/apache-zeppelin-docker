#!/usr/bin/env sh

set -e
set -o pipefail

MAVEN_VERSION=3.3.9

wget -qO- http://archive.apache.org/dist/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz | tar zxv -C /usr/share

ln -nsf /usr/share/apache-maven-$MAVEN_VERSION /usr/share/maven
ln -nsf /usr/share/maven/bin/mvn /usr/bin/mvn
