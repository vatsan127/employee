package dev.project.employee.service;

import dev.project.employee.model.Employee;
import dev.project.employee.repository.EmployeeRepository;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class EmployeeService {

    private EmployeeRepository repository;

    public EmployeeService(EmployeeRepository repository) {
        this.repository = repository;
    }

    public List<Employee> getAllEmployees() {
        return repository.findAll();
    }

    public Optional<Employee> getEmployeeById(int id) {
        return repository.findById(id);
    }

    public Employee saveEmployee(Employee employee) {
        return repository.save(employee);
    }

    public void deleteEmployee(int id) {
        repository.deleteById(id);
    }

    /* Custom JPA Implementations */

    public List<Employee> getEmployeesByDepartment(String department) {
        return repository.findByDepartment(department);
    }

    public List<Employee> getEmployeesByAgeRange(int startAge, int endAge) {
        return repository.findByAgeBetween(startAge, endAge);
    }

    public List<Employee> getEmployeesByFirstNameLike(String name) {
        return repository.findByFirstNameLike(name);
    }

    public List<Employee> getEmployeesByDepartmentOrderByNameAsc(String department) {
        return repository.findByDepartmentOrderByAgeAsc(department);
    }

    public List<Employee> getEmployeesByFirstNameAndAge(String name, Integer age) {
        return repository.findByFirstNameAndAge(name, age);
    }

}
