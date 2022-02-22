FROM openjdk:11

ENV HADOOP_HOME=/opt/hadoop

WORKDIR /opt
RUN wget https://archive.apache.org/dist/hadoop/common/hadoop-3.2.1/hadoop-3.2.1.tar.gz
RUN tar -xzf hadoop-3.2.1.tar.gz && mv hadoop-3.2.1 hadoop
RUN echo "JAVA_HOME=$JAVA_HOME" >> /opt/hadoop/etc/hadoop/hadoop-env.sh
COPY *-site.xml /opt/hadoop/etc/hadoop/
COPY workers /opt/hadoop/etc/hadoop/
RUN mkdir /hdfsDataNode
RUN apt-get update && apt-get install -y openssh-server net-tools iputils-ping openssh-client
RUN ssh-keygen -t rsa -P '' -f ~/.ssh/id_rsa && cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys
COPY run.sh /

CMD ["/bin/bash","/run.sh"]