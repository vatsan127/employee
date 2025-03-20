package dev.srivatsan.employee.controller;

import dev.srivatsan.employee.entity.Department;
import dev.srivatsan.employee.service.EmployeeService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class EmployeeController {

    private EmployeeService employeeService;

    public EmployeeController(EmployeeService employeeService) {
        this.employeeService = employeeService;
    }

    @GetMapping("/department/{id}")
    public ResponseEntity<Department> getDepartment(@PathVariable String id) {
        Department department = employeeService.getDepartment(id);
        return ResponseEntity.ok(department);
    }

    @GetMapping("/departments/cache/clear")
    public ResponseEntity clearCache() {
        employeeService.clearCache();
        return ResponseEntity.ok("Cache Cleared");
    }

}
