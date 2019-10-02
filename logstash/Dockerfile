FROM docker.elastic.co/logstash/logstash:6.5.4
RUN /usr/share/logstash/bin/logstash-plugin install logstash-input-jdbc
COPY ./mysql-connector-java-5.1.46.jar /usr/share/logstash/mysql-connector-java.jar