package dev.srivatsan.employee.controller;

import dev.srivatsan.employee.entity.Employee;
import dev.srivatsan.employee.service.EmployeeService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

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

    @PostMapping
    public ResponseEntity<Employee> createEmployee(@RequestBody Employee employee) {
        log.info("EmployeeService :: createEmployee :: Incoming request : {}", employee);
        Employee createdEmployee = employeeService.createEmployee(employee);
        return ResponseEntity.ok(createdEmployee);
    }

}
