package dev.srivatsan.employee.controller;

import dev.srivatsan.employee.entity.Department;
import dev.srivatsan.employee.service.EmployeeService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class EmployeeController {

    private EmployeeService employeeService;

    public EmployeeController(EmployeeService employeeService) {
        this.employeeService = employeeService;
    }

    @GetMapping("/departments")
    public ResponseEntity<List<Department>> getDepartment() {
        List<Department> department = employeeService.getDepartment();
        return ResponseEntity.ok(department);
    }

}
