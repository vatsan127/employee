package dev.srivatsan.employee.service;

import dev.srivatsan.employee.entity.Department;
import dev.srivatsan.employee.entity.Employee;
import dev.srivatsan.employee.entity.Task;
import dev.srivatsan.employee.repository.DepartmentRepo;
import dev.srivatsan.employee.repository.EmployeeRepo;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.config.ConfigurableBeanFactory;
import org.springframework.cache.annotation.CachePut;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Slf4j
@Scope(ConfigurableBeanFactory.SCOPE_SINGLETON)
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

    @Cacheable(value = "employeeCache", key = "#id")
    public Employee getAllEmployees(long id) {
        return employeeRepo.findById(id).get();
    }

    @CachePut(value = "employeeCache", key = "#employee.id")

    @Transactional
    public Employee createEmployee(Employee employee) {
        List<Task> tasks = employee.getTask();
        employee.setTask(tasks);
        employee.setContactDetails(employee.getContactDetails());
        return employeeRepo.save(employee);
    }
}
