#
# LOCKDOWN KIBANA VERSION : 1.2.0
#

ARG KIBANA_VERSION=1.2.0
FROM amazon/opendistro-for-elasticsearch-kibana:${KIBANA_VERSION}

#
# Define open distro security plugins configuration folder
#
ENV OPEN_DISTRO_SECURITY_CONFIG_FOLDER /usr/share/kibana/plugins/opendistro_security/securityconfig

#
# Local configuration folder
#
ENV LOCAL_CONFIGURATION_FOLDER config

#
# Copy the kibana configuration file
#
COPY ${LOCAL_CONFIGURATION_FOLDER}/kibana.yml \
    ${OPEN_DISTRO_SECURITY_CONFIG_FOLDER}/kibana.yml