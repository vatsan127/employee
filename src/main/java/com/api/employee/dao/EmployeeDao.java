package com.api.employee.dao;

import com.api.employee.exceptions.EmployeeNotFoundException;
import com.api.employee.model.Employee;
import com.api.employee.service.EmployeeService;
import jakarta.annotation.PostConstruct;
import jakarta.transaction.Transactional;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

import static com.api.employee.constants.QueryConstants.*;

@Transactional
@Repository
public class EmployeeDao {
    @Autowired
    private static JdbcTemplate jdbcTemplate;

    private static Logger log = LoggerFactory.getLogger(EmployeeService.class);

    @PostConstruct
    public void init() {

        System.out.println("MyComponent initialized!");
    }

    public Employee findById(Long id) {
        try {
            Employee employee = jdbcTemplate.queryForObject(SELECT_QUERY, new BeanPropertyRowMapper<>(Employee.class), id);
            log.info("JdbcService :: findById :: employee :: {}", employee);
            return employee;
        } catch (DataAccessException e) {
            log.error("Employee with ID {} not found. ", id);
            throw new EmployeeNotFoundException();
        }
    }

    public List<Employee> findAll(){
        try {
            List<Employee> employeeList = jdbcTemplate.query(SELECT_ALL_QUERY, new BeanPropertyRowMapper<>(Employee.class));
            log.info("JdbcService :: findAll :: employees :: {}", employeeList);
            return employeeList;
        } catch (DataAccessException e) {
            log.error("Error occurred while retrieving all employees: {}", e.getMessage());
            throw new EmployeeNotFoundException();
        }
    }

    public Employee saveEmployee(Employee employee) {
        jdbcTemplate.update(INSERT_QUERY, employee.getEmpName(), employee.getEmpDept(), employee.getEmpRole());
        log.info("JdbcService :: saveEmployee :: employee :: {}", employee);
        return employee;
    }

    public Employee updateEmployee(Long id, Employee employee) {
        Employee employee1 = findById(id);
        jdbcTemplate.update(UPDATE_QUERY, employee.getEmpName(), employee.getEmpDept(), employee.getEmpRole(), id);
        log.info("JdbcService :: updateEmployee :: employee :: {}", employee1);
        return employee1;
    }

    public Employee deleteById(Long id) {
        Employee employee = findById(id);
        jdbcTemplate.update(DELETE_QUERY, id);
        log.info("JdbcService :: deleteById :: employee :: {}", employee);
        return employee;
    }

}
