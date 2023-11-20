package com.api.employee.controller;

import com.api.employee.exceptions.EmployeeNotFoundException;
import com.api.employee.model.Employee;
import com.api.employee.service.JdbcService;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import java.io.FileReader;
import java.io.IOException;
import java.net.URI;
import java.util.Properties;

@RestController
public class EmployeeController {

    @Autowired
    private JdbcService service;

    @RequestMapping(method = RequestMethod.GET, path = "/application-properties")
    public Properties applicationProperties() throws IOException {
        FileReader fileReader = new FileReader("src\\main\\resources\\application.properties");
        Properties properties = new Properties();
        properties.load(fileReader);
        return properties;
    }

    @GetMapping("/api/v1/employees/{id}")
    public Employee getEmployee(@PathVariable Long id) {
        Employee employee = service.findById(id);
        if (employee == null ) {
            throw new EmployeeNotFoundException();
        }
        else {
            return employee;
        }
    }

    @PostMapping("/api/v1/employees/create")
    public ResponseEntity<Employee> createEmployee(@Valid @RequestBody Employee employee) {
        Employee newEmployee = service.saveEmployee(employee);
        URI location = ServletUriComponentsBuilder.fromCurrentContextPath().path("/id")
                .buildAndExpand(employee.getEmpId()).toUri();
        return ResponseEntity.created(location).build();
    }

}
