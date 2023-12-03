package com.api.employee.controller;

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
import java.util.List;
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

    @GetMapping("/{id}")
    public Employee getEmployee(@PathVariable Long id) {
        Employee employee = service.findById(id);
        return employee;

    }

    @GetMapping("/all")
    public List<Employee> getEmployee() {
        return service.findAll();
    }

    @PostMapping("/create")
    public ResponseEntity<Employee> createEmployee(@Valid @RequestBody Employee employee) {
        Employee newEmp = service.saveEmployee(employee);
        URI location = ServletUriComponentsBuilder.fromCurrentContextPath().path("/id")
                .buildAndExpand(newEmp.getEmpId()).toUri();
        return ResponseEntity.created(location).build();
    }

    @PostMapping("/update/{id}")
    public ResponseEntity<Employee> updateEmployee(@PathVariable Long id, @Valid @RequestBody Employee employee) {
        Employee updatedEmp = service.updateEmployee(id, employee);
        return ResponseEntity.ok(updatedEmp);
    }

    @DeleteMapping("delete/{id}")
    public ResponseEntity deleteEmployee(@PathVariable Long id) {
        Employee employee = service.deleteById(id);
        return ResponseEntity.ok(String.format("DATA REMOVED " +
                        "\nName: %s" +
                        "\nEmployeeId: %s"
                , employee.getEmpName(), String.valueOf(employee.getEmpId())
        ));
    }

}
