#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
	CREATE USER testserver WITH PASSWORD 'testserver';
	CREATE DATABASE testserver;
	GRANT ALL PRIVILEGES ON DATABASE testserver TO testserver;
EOSQL