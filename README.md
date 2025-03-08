# Readme

## Status Codes

* 200 OK for successful retrieval of employees.
* 201 Created for successfully creating an employee.
* 404 Not Found for employee not found (GET and DELETE operations).
* 204 No Content for successful deletion.

## Initialize postgres with employees data

```bash 
docker exec -it emp-db psql -U postgres -d postgres
```

```sql
CREATE DATABASE employees;
```

```
\c employees
```

```
CREATE SCHEMA employees;
```

```
\q
```

```bash
docker cp ./sampledata/employees.sql.gz emp-db:/
```

```bash 
docker exec -it emp-db sh
```

```
pg_restore -d postgresql://postgres:postgres@localhost/employees -Fc employees.sql.gz -c -v --no-owner --no-privileges
```

```
psql postgresql://postgres:postgres@localhost/employees
```

### Tables

```sql
-- get all table details present in the schema
SELECT * FROM information_schema.tables
WHERE table_schema = 'employees' AND table_type = 'BASE TABLE';

SELECT * FROM pg_catalog.pg_tables WHERE schemaname = 'employees';

-- tables present 
select * from employees.employee e ;
select * from employees.department d ;
select * from employees.department_employee de ;
select * from employees.department_manager dm ;
select * from employees.salary s ;
select * from employees.title t ;
```

## Grafana

* prometheus datasource url:  ```http://prometheus:9090```  