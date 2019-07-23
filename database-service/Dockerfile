FROM mysql:latest

ENV MYSQL_ROOT_PASSWORD password
ENV MYSQL_DATABASE books
ENV MYSQL_USER root
ENV MYSQL_PASSWORD pass

ADD setup.sql /docker-entrypoint-initdb.d
