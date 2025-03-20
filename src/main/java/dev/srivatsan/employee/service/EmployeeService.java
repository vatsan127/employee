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

    private DepartmentRepo departmentRepo;

    public EmployeeService(DepartmentRepo departmentRepo) {
        this.departmentRepo = departmentRepo;
    }

    public List<Department> getAllDepartments() {
        return departmentRepo.findAll();
    }

    @Cacheable(value = "departmentsCache", key = "#id")
    public Department getDepartment(String id) {
        return departmentRepo.findById(id).orElse(new Department());
    }

    @CacheEvict(value = "departmentsCache", allEntries = true)
    public void clearCache() {
        log.info("Departments Cache Cleared");
    }
}
