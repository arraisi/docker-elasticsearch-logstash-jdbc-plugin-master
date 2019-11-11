
#
# Lockdown to version 6.5.4
#
ARG VERSION=6.5.4
FROM docker.elastic.co/logstash/logstash:${VERSION}

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
COPY ./config/logstash.yml /usr/share/logstash/config/logstash.yml

#
# Copy the mariadb JDBC client
#
COPY ./dependencies/mariadb-java-client-2.4.4.jar /usr/share/logstash/mariadb-java-client.jar

#
# Copy the pipeline that we are executing
#
COPY ./pipeline/jdbc-input-plugin.conf /usr/share/logstash/pipeline/logstash.conf