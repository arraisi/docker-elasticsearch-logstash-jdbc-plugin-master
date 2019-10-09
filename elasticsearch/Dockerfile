#
# LOCKDOWN ELASTICSEARCH VERSION : 1.2.0
#
ARG VERSION=1.2.0

#
# Define docker source
#
FROM amazon/opendistro-for-elasticsearch:${VERSION}

#
# Define open distro security configuration folder
#
ENV OPEN_DISTO_SECURITY_CONFIG_FOLDER /usr/share/elasticsearch/plugins/opendistro_security/securityconfig

#
# Elastic search configuration folder
#
ENV ELASTICSEARCH_CONFIG_FOLDER /usr/share/elasticsearch/config

#
# Local configuration folder for the security plugin ./config/opendistro_security/*
#
ENV LOCAL_OPENDISTRO_SECURITY_CONFIGURATION_FOLDER config/opendistro_security

#
# Local configuration folder for the opendistro ES cluster ./config/opendistro/*
#
ENV LOCAL_OPENDISTRO_CONFIGURATION_FOLDER config/opendistro

# #
# # COPY configuration files - in the future we will configure custom passwords.
# #

#
# Copy internal users file.
#
# Careful with that ! will have to be reloaded by ES container in order to be read.
# Only if you modify this after the container has been created
# In this current case we don't need to because we copy the assets at docker image creation time
#
COPY ${LOCAL_OPENDISTRO_SECURITY_CONFIGURATION_FOLDER}/internal_users.yml \
    ${OPEN_DISTO_SECURITY_CONFIG_FOLDER}/internal_users.yml

#
# Copy the log4j configuration properties file
# this helps on ingesting the data logs into elastic search
#
COPY ${LOCAL_OPENDISTRO_SECURITY_CONFIGURATION_FOLDER}/log4j2.properties \
    ${OPEN_DISTO_SECURITY_CONFIG_FOLDER}/log4j2.properties

#
# Copy roles configuration file
#
#

COPY ${LOCAL_OPENDISTRO_SECURITY_CONFIGURATION_FOLDER}/roles.yml \
    ${OPEN_DISTO_SECURITY_CONFIG_FOLDER}/roles.yml

#
# Copy tenants configuration file
#
#

COPY ${LOCAL_OPENDISTRO_SECURITY_CONFIGURATION_FOLDER}/tenants.yml \
    ${OPEN_DISTO_SECURITY_CONFIG_FOLDER}/tenants.yml

#
# Copy roles mapping file
#
#

COPY ${LOCAL_OPENDISTRO_SECURITY_CONFIGURATION_FOLDER}/roles_mapping.yml \
    ${OPEN_DISTO_SECURITY_CONFIG_FOLDER}/roles_mapping.yml

#
# Copy action groups file
#
#

COPY ${LOCAL_OPENDISTRO_SECURITY_CONFIGURATION_FOLDER}/action_groups.yml \
    ${LOCAL_OPENDISTRO_SECURITY_CONFIGURATION_FOLDER}/action_groups.yml