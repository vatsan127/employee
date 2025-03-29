# Readme

## Initialize postgres with employees data

```bash 
docker exec -it emp-db psql -U postgres -d postgres
```

```sql
CREATE
DATABASE employees;
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

### Copy the employees.sql.gz file to the container

```bash
docker cp ./sampledata/employees.sql.gz emp-db:/
```

```bash 
docker exec -it emp-db sh
```

### Restore the database

```
psql postgresql://[user]:[password]@[hostname]/employees
pg_restore -d postgresql://postgres:postgres@localhost/employees -Fc employees.sql.gz -c -v --no-owner --no-privileges
```

### Connect to the database

```
psql postgresql://postgres:postgres@localhost/employees
```

### Tables

```sql
-- get all table details present in the schema
SELECT *
FROM information_schema.tables
WHERE table_schema = 'employees'
  AND table_type = 'BASE TABLE';

SELECT *
FROM pg_catalog.pg_tables
WHERE schemaname = 'employees';

-- tables present 
select *
from employees.employee e;
select *
from employees.department d;
select *
from employees.department_employee de;
select *
from employees.department_manager dm;
select *
from employees.salary s;
select *
from employees.title t;
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

---

## API Details

* `http://localhost:8080/employee/v1/actuator` - Actuator endpoint for monitoring and managing the application.
* `http://localhost:8080/employee/v1/departments` - Retrieve all departments.
* `http://localhost:8080/employee/v1/department/d009` - Retrieve details of department with ID `d009`.
* `http://localhost:8080/employee/v1/departments/cache/clear` - Clear the departments cache.
