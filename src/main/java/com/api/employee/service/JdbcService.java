package com.api.employee.service;

import com.api.employee.model.Employee;
import jakarta.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import static com.api.employee.constants.QueryConstants.*;

@Transactional
@Repository
public class JdbcService {
    @Autowired
    private JdbcTemplate jdbcTemplate;

    public Employee findById(Long id) {
        Employee employee = jdbcTemplate.queryForObject(SELECT_QUERY, new BeanPropertyRowMapper<>(Employee.class), id);
        return employee;
    }

    public Employee saveEmployee(Employee employee) {
        jdbcTemplate.update(INSERT_QUERY, employee.getEmpName(), employee.getEmpDept(), employee.getEmpRole());
        return employee;
    }

    public Employee updateEmployee(Employee employee) {
        jdbcTemplate.update(UPDATE_QUERY, employee.getEmpName(),
                employee.getEmpDept(), employee.getEmpRole(), employee.getEmpId());
        return employee;
    }

    public Employee deleteById(Long id) {
        Employee employee = findById(id);
        jdbcTemplate.update(DELETE_QUERY,id);
        return employee;
    }

}
