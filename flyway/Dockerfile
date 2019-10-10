
FROM boxfuse/flyway:latest

RUN apt-get update && \
    apt-get install -y mysql-client && \
    mkdir /flyway/bin

ADD ./dependencies/wait-for-mariadb.sh /flyway/bin/wait-for-mariadb.sh
RUN chmod 755 /flyway/bin/wait-for-mariadb.sh