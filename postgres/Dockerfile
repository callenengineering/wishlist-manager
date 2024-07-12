FROM postgres:12.1-alpine

RUN apk update && apk upgrade && apk add --no-cache su-exec

ADD postgres/config/postgresql.conf /bin
RUN chmod 777 /bin/postgresql.conf

EXPOSE 5432