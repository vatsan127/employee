package dev.srivatsan.employee.service;

import dev.srivatsan.employee.entity.Department;
import jakarta.annotation.PostConstruct;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.Cache;
import org.springframework.cache.CacheManager;
import org.springframework.stereotype.Component;

import java.util.List;

@Slf4j
@Component
public class CacheManagerService {

    @Autowired
    private CacheManager cacheManager;

    @Autowired
    private EmployeeService service;

    @PostConstruct
    public void initialize() {
        log.info("Cache Manager Service : Initializing Departments cache");
        Cache departmentsCache = cacheManager.getCache("departmentsCache");

        List<Department> departmentList = service.getAllDepartments();
        for (Department department : departmentList) {
            departmentsCache.put(department.getId(), department);
        }
        log.info("Cache Manager Service : Departments cache initialized Successfully");

    }
}