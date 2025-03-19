package dev.srivatsan.employee.service;

import dev.srivatsan.employee.entity.Department;
import dev.srivatsan.employee.repository.DepartmentRepo;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;

@Slf4j
@Service
public class EmployeeService {

    private DepartmentRepo departmentRepo;

    public EmployeeService(DepartmentRepo departmentRepo) {
        this.departmentRepo = departmentRepo;
    }

    public List<Department> getDepartment() {
        return departmentRepo.findAll();
    }

}
