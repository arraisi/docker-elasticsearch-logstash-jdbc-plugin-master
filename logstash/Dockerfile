FROM docker.elastic.co/logstash/logstash:6.5.4

#
# Define Logstash plugins path
#
ENV LOGSTASH_PLUGIN_PATH /usr/share/logstash/bin/logstash-plugin

#
# Install & configure Logstash plugins
#
RUN ${LOGSTASH_PLUGIN_PATH} install logstash-input-jdbc
RUN ${LOGSTASH_PLUGIN_PATH} install logstash-filter-aggregate
RUN ${LOGSTASH_PLUGIN_PATH} install logstash-filter-jdbc_streaming
RUN ${LOGSTASH_PLUGIN_PATH} install logstash-filter-mutate

#
# Copy logstash configuration
#
COPY ./logstash.yml /usr/share/logstash/config/logstash.yml

#
# Copy the mariadb JDBC client
#
COPY ./mariadb-java-client-2.4.4.jar /usr/share/logstash/mariadb-java-client.jar