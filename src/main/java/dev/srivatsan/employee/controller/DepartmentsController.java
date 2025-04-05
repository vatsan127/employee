package dev.srivatsan.employee.controller;

import dev.srivatsan.employee.entity.Department;
import dev.srivatsan.employee.service.CacheManagerService;
import dev.srivatsan.employee.service.EmployeeService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@Slf4j
@RestController
@RequestMapping("departments/")
public class DepartmentsController {

    private final EmployeeService employeeService;
    private final CacheManagerService cacheManagerService;

    public DepartmentsController(EmployeeService employeeService, CacheManagerService cacheManagerService) {
        this.employeeService = employeeService;
        this.cacheManagerService = cacheManagerService;
    }

    @GetMapping("{id}")
    public ResponseEntity<Department> getDepartment(@PathVariable long id) {
        log.info("EmployeeService :: getDepartment :: Fetching Department with ID: {}", id);
        Department department = employeeService.getDepartment(id);
        return ResponseEntity.ok(department);
    }

    @GetMapping("cache/clear/all")
    public ResponseEntity<String> clearCache() {
        cacheManagerService.clearDepartmentCache();
        return ResponseEntity.ok("Cache Cleared");
    }

    @GetMapping("cache/clear/{id}")
    public ResponseEntity<String> clearCache(@PathVariable long id) {
        cacheManagerService.clearDepartmentCache(id);
        return ResponseEntity.ok("Cache Cleared");
    }

}
