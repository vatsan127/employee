package com.api.employee.service;

import com.api.employee.model.Employee;
import jakarta.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import static com.api.employee.constants.QueryConstants.INSERT_QUERY;
import static com.api.employee.constants.QueryConstants.SELECT_QUERY;

@Transactional
@Repository
public class JdbcService {
    @Autowired
    private JdbcTemplate jdbcTemplate;

    public Employee saveEmp(Employee employee) {
        jdbcTemplate.update(INSERT_QUERY, employee.getEmpId(), employee.getEmpName(),
                employee.getEmpDept(), employee.getEmpRole());
        return employee;
    }


    public Employee findById(Long id) {
        Employee employee = jdbcTemplate.queryForObject(SELECT_QUERY,
                new BeanPropertyRowMapper<>(Employee.class), id);
        return employee;
    }
}
