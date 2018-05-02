FROM inlineno1/centos7:0.1

# create user
RUN adduser activemq

# sudo nopassword
RUN echo 'apollo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

# env JAVA_HOME
ENV JAVA_HOME /usr/java/latest

# install ActiveMQ
WORKDIR /home/activemq
USER activemq
RUN wget -c http://apache.tt.co.kr//activemq/5.15.3/apache-activemq-5.15.3-bin.tar.gz && \
	tar -zxvf apache-activemq-5.15.3-bin.tar.gz && \
	rm apache-activemq-5.15.3-bin.tar.gz

# port mapping
EXPOSE 8161 61616 5672 61613 1883 61614

CMD apache-activemq-5.15.3/bin/activemq start
