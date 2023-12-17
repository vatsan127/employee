package com.api.employee.service;

import com.api.employee.dao.EmployeeDao;
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

import java.util.List;

import static com.api.employee.constants.QueryConstants.*;

public class EmployeeService {
    private EmployeeDao dao;

    public Employee getEmployee(Long id) {
        return dao.findById(id);
    }

    public List<Employee> getAllEmployee() {
        return dao.findAll();
    }

    public Employee saveNewEmployee(Employee employee) {
        return dao.saveEmployee(employee);
    }

    public Employee updateEmployeeDetails(Long id, Employee employee) {
        return dao.updateEmployee(id, employee);
    }

    public Employee deleteEmployee(Long id) {
        return dao.deleteById(id);
    }
}
