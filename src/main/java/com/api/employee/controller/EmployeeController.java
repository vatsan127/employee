package com.api.employee.controller;

import com.api.employee.model.Employee;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import java.io.FileReader;
import java.io.IOException;
import java.net.URI;
import java.util.Arrays;
import java.util.List;
import java.util.Properties;

@RestController
public class EmployeeController {

    @RequestMapping(method = RequestMethod.GET, path = "/application-properties")
    public Properties applicationProperties() throws IOException {
        FileReader fileReader = new FileReader("src\\main\\resources\\application.properties");
        Properties properties = new Properties();
        properties.load(fileReader);
        return properties;
    }

    @GetMapping("/api/v1/employees/{employeeName}")
    public List<Employee> getEmployee(@PathVariable String employeeName) {
        return Arrays.asList(new Employee(1, employeeName, "CVS", "PDE"));
    }

    @PostMapping("/api/v1/employees/create")
    public ResponseEntity<Employee> createEmployee(@RequestBody Employee employee) {
        Employee newEmployee = employee;
        URI location = ServletUriComponentsBuilder.fromCurrentContextPath()
                .path("/id")
                .buildAndExpand(employee.getEmpId())
                .toUri();
        return ResponseEntity.created(location).build();
    }


}
