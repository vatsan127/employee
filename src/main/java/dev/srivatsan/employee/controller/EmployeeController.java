package dev.srivatsan.employee.controller;

import dev.srivatsan.employee.entity.Employee;
import dev.srivatsan.employee.service.EmployeeService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@Slf4j
@RestController
@RequestMapping("employees/")
public class EmployeeController {

    private final EmployeeService employeeService;

    public EmployeeController(EmployeeService employeeService) {
        this.employeeService = employeeService;
    }

    @GetMapping("{id}")
    public ResponseEntity<Employee> getAllEmployees(@PathVariable long id) {
        log.info("EmployeeService :: getAllEmployees :: Fetching all employees");
        Employee employee = employeeService.getAllEmployees(id);
        return ResponseEntity.ok(employee);
    }
}
