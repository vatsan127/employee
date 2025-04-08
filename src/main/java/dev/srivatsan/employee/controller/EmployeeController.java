package dev.srivatsan.employee.controller;

import dev.srivatsan.employee.entity.Employee;
import dev.srivatsan.employee.entity.EmployeeDto;
import dev.srivatsan.employee.service.EmployeeService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Slf4j
@RestController
@RequestMapping("employees/")
public class EmployeeController {

    private final EmployeeService employeeService;

    public EmployeeController(EmployeeService employeeService) {
        this.employeeService = employeeService;
    }

    @GetMapping("{id}")
    public ResponseEntity<Employee> getEmployeesById(@PathVariable long id) {
        log.info("EmployeeService :: getEmployeesById :: ID : {}", id);
        Employee employee = employeeService.getAllEmployees(id);
        return ResponseEntity.ok(employee);
    }

    @PostMapping
    public ResponseEntity<Employee> createEmployee(@RequestBody Employee employee) {
        log.info("EmployeeService :: createEmployee :: Incoming Request : {}", employee);
        Employee createdEmployee = employeeService.createEmployee(employee);
        return ResponseEntity.ok(createdEmployee);
    }

    @GetMapping("full-info/")
    public ResponseEntity<List<EmployeeDto>> getEmploeesFullInfo() {
        List<EmployeeDto> result = employeeService.getEmployeeFullInfo();
        return ResponseEntity.ok(result);
    }

}
