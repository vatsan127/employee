package com.api.employee.service;

import com.api.employee.exceptions.EmployeeNotFoundException;
import com.api.employee.model.Employee;
import jakarta.transaction.Transactional;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import static com.api.employee.constants.QueryConstants.*;

@Transactional
@Repository
public class JdbcService {
    @Autowired
    private JdbcTemplate jdbcTemplate;

    private Logger log = LoggerFactory.getLogger(JdbcService.class);

    public Employee findById(Long id) {
        try {
            Employee employee = jdbcTemplate.queryForObject(SELECT_QUERY, new BeanPropertyRowMapper<>(Employee.class), id);
            log.info("JdbcService :: findById :: employee :: {}", employee);
            return employee;
        } catch (DataAccessException e) {
            log.info("Employee with ID {} not found. ", id);
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
