## Postgres

CREATE INDEX <INDEX_NAME> ON <TABLE_NAME>(COLUMN_NAME);

-- psql cmd
\l show db
\c change db
\d show tables
\q exit psql
\dt <schema-name>.* -- get all tables from a schema

psql -h localhost -p 5432 -U postgres -d dev
psql -U postgres -d dev

pg_restore -d postgresql://[user]:[password]@[hostname]/employees -Fc employees.sql.gz -c -v --no-owner --no-privileges
pg_restore -d postgresql://postgres:postgres@localhost/employees -Fc employees.sql.gz -c -v --no-owner --no-privileges

CREATE DATABASE employees;
\c employees
create schema employees;

psql postgresql://[user]:[password]@[neon_hostname]/employees
psql postgresql://postgres:postgres@localhost/employees

psql postgresql://steve:password@localhost/employees
pg_restore -d postgresql://steve:password@localhost/employees -Fc employees.sql.gz -c -v --no-owner --no-privileges



## Docker
docker run --name postgres -e POSTGRES_PASSWORD=password -e POSTGRES_DB=employees --network database -p 5432:5432 -v postgres_data_vol:/var/lib/postgresql/data -d postgres:17

docker exec -it postgres psql -U postgres -d dev

docker run -p 5701:5701 hazelcast/hazelcast

docker images | grep 2025 | awk '{print $3}' | xargs docker rmi -f

## Curl
curl localhost:8080/transaction/v1/actuator/prometheus
