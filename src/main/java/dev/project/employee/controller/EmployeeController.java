package dev.project.employee.controller;

import dev.project.employee.model.Employee;
import dev.project.employee.service.EmployeeService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@Slf4j
@RestController
public class EmployeeController {

    private final EmployeeService service;

    public EmployeeController(EmployeeService service) {
        this.service = service;
    }

    // Get all employees - 200 OK
    @GetMapping("/")
    public ResponseEntity<List<Employee>> getAllEmployees() {
        List<Employee> employees = service.getAllEmployees();
        return employees.isEmpty() ? new ResponseEntity<>(HttpStatus.NO_CONTENT) : new ResponseEntity<>(employees, HttpStatus.OK);
    }

    // Get employee by ID - 200 OK or 404 Not Found
    @GetMapping("/{id}")
    public ResponseEntity<Employee> getEmployeeById(@PathVariable int id) {
        Optional<Employee> employee = service.getEmployeeById(id);
        if (employee.isPresent()) {
            return new ResponseEntity<>(employee.get(), HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);  // 404 if employee not found
        }
    }

    // Create a new employee - 201 Created
    @PostMapping("/create")
    public ResponseEntity<Employee> createEmployee(@RequestBody Employee employee) {
        Employee createdEmployee = service.saveEmployee(employee);
        return new ResponseEntity<>(createdEmployee, HttpStatus.CREATED);  // 201 Created
    }

    // Delete employee by ID - 204 No Content or 404 Not Found
    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteEmployee(@PathVariable int id) {
        Optional<Employee> employee = service.getEmployeeById(id);
        if (employee.isPresent()) {
            service.deleteEmployee(id);
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);  // 204 No Content on successful deletion
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);  // 404 if employee not found
        }
    }

    @GetMapping("/department")
    public ResponseEntity<List<Employee>> getEmployeesByDepartment(@RequestParam("dept") String dept) {
        List<Employee> employees = service.getEmployeesByDepartment(dept);
        return employees.isEmpty() ? new ResponseEntity<>(HttpStatus.NO_CONTENT) : new ResponseEntity<>(employees, HttpStatus.OK);
    }

    @GetMapping("/age-range")
    public ResponseEntity<List<Employee>> getEmployeesByAgeRange(@RequestParam("startAge") int startAge, @RequestParam("endAge") int endAge) {
        List<Employee> employees = service.getEmployeesByAgeRange(startAge, endAge);
        return employees.isEmpty() ? new ResponseEntity<>(HttpStatus.NO_CONTENT) : new ResponseEntity<>(employees, HttpStatus.OK);
    }

    @GetMapping("/name")
    public ResponseEntity<List<Employee>> getEmployeesByFirstNameLike(@RequestParam("name") String name) {
        List<Employee> employees = service.getEmployeesByFirstNameLike(name);
        return employees.isEmpty() ? new ResponseEntity<>(HttpStatus.NO_CONTENT) : new ResponseEntity<>(employees, HttpStatus.OK);
    }

    @GetMapping("/sort")
    public ResponseEntity<List<Employee>> getEmployeesByDepartmentOrderByNameAsc(@RequestParam("dept") String dept) {
        List<Employee> employees = service.getEmployeesByDepartmentOrderByNameAsc(dept);
        return employees.isEmpty() ? new ResponseEntity<>(HttpStatus.NO_CONTENT) : new ResponseEntity<>(employees, HttpStatus.OK);
    }

    @GetMapping("/name-age")
    public ResponseEntity<List<Employee>> getEmployeesByFirstNameAndAge(@RequestParam String name, @RequestParam int age) {
        List<Employee> employees = service.getEmployeesByFirstNameAndAge(name, age);
        return employees.isEmpty() ? new ResponseEntity<>(HttpStatus.NO_CONTENT) : new ResponseEntity<>(employees, HttpStatus.OK);
    }

}
