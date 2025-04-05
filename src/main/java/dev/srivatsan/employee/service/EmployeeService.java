package dev.srivatsan.employee.service;

import dev.srivatsan.employee.entity.Department;
import dev.srivatsan.employee.entity.Employee;
import dev.srivatsan.employee.repository.DepartmentRepo;
import dev.srivatsan.employee.repository.EmployeeRepo;
import lombok.extern.slf4j.Slf4j;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import java.util.List;

@Slf4j
@Service
public class EmployeeService {

    private final DepartmentRepo departmentRepo;
    private final EmployeeRepo employeeRepo;

    public EmployeeService(DepartmentRepo departmentRepo, EmployeeRepo employeeRepo) {
        this.departmentRepo = departmentRepo;
        this.employeeRepo = employeeRepo;
    }

    public List<Department> getAllDepartments() {
        return departmentRepo.findAll();
    }

    @Cacheable(value = "departmentsCache", key = "#id")
    public Department getDepartment(long id) {
        log.info("EmployeeService :: getDepartment :: Fetching Department with ID: {}", id);
        return departmentRepo.findById(id).orElse(new Department());
    }

    public Employee getAllEmployees(long id) {
        return employeeRepo.findById(id).get();
    }

    public Employee createEmployee(Employee employee) {
        return employeeRepo.save(employee);
    }
}
