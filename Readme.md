# Readme

## Database

```sql
CREATE DATABASE employees;
CREATE SCHEMA IF NOT EXISTS employees;
```

## Tables

```sql
-- get all table details present in the schema
select * from information_schema.tables
where table_schema = 'public' and table_type = 'base table';

select * from pg_catalog.pg_tables where schemaname = 'public';

-- tables present 
select * from employee ;
select * from department ;
select * from department_manager ;
```

---

## Status Codes

* 200 OK for successful retrieval of employees.
* 201 Created for successfully creating an employee.
* 404 Not Found for employee not found (GET and DELETE operations).
* 204 No Content for successful deletion.

---

## psql commands

```
\l show db
\c change db
\d show tables
\q exit psql
\dt show tables
\dt <schema-name>.* -- get all tables from a schema
```