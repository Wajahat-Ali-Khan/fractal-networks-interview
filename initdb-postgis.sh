#!/bin/bash
set -e

POSTGRES="psql --username ${POSTGRES_USER}"

echo "Creating database: ${POSTGRES_DB}"

$POSTGRES <<EOSQL
CREATE DATABASE ${POSTGRES_DB} OWNER ${POSTGRES_USER};
EOSQL

echo "Creating PostGIS extension"

$POSTGRES ${POSTGRES_DB} <<EOSQL
CREATE EXTENSION postgis;
EOSQL
