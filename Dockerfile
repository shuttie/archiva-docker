FROM ubuntu:14.04
MAINTAINER grv@dfdx.me

RUN apt-get -y -q update && \
    apt-get -y -q install software-properties-common && \
    add-apt-repository ppa:webupd8team/java && \
    echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections && \
    apt-get -y -q update && \
    apt-get install -qqy \
        oracle-java8-installer \
        libjna-java

ADD apache-archiva-2.2.0-bin.tar.gz /tmp/
RUN mv /tmp/apache-archiva-2.2.0 /archiva
EXPOSE 8080
CMD /archiva/bin/archiva console
VOLUME ["/archiva/conf", "/archiva/data", "/archiva/repositories"]