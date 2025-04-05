package dev.srivatsan.employee.service;

import dev.srivatsan.employee.entity.Department;
import dev.srivatsan.employee.repository.DepartmentRepo;
import lombok.extern.slf4j.Slf4j;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import java.util.List;

@Slf4j
@Service
public class EmployeeService {

    private final DepartmentRepo departmentRepo;

    public EmployeeService(DepartmentRepo departmentRepo) {
        this.departmentRepo = departmentRepo;
    }

    public List<Department> getAllDepartments() {
        log.info("EmployeeService :: getAllDepartments :: Fetching All Departments");
        return departmentRepo.findAll();
    }

    @Cacheable(value = "departmentsCache", key = "#id")
    public Department getDepartment(long id) {
        log.info("EmployeeService :: getDepartment :: Fetching Department with ID: {}", id);
        return departmentRepo.findById(id).orElse(new Department());
    }
}
