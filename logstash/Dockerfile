FROM docker.elastic.co/logstash/logstash:6.5.4
RUN /usr/share/logstash/bin/logstash-plugin install logstash-input-jdbc
COPY ./mariadb-java-client-2.1.0.jar /usr/share/logstash/mariadb-java-client.jar
COPY ./logstash.yml /usr/share/logstash/config/logstash.yml