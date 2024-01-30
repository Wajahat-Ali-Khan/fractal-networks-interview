# Dockerfile for PostgreSQL container with PostGIS support
FROM postgis/postgis:13-3.1

ENV POSTGRES_USER=myuser
ENV POSTGRES_PASSWORD=mypassword
ENV POSTGRES_DB=mydatabase

COPY initdb-postgis.sh /docker-entrypoint-initdb.d/
