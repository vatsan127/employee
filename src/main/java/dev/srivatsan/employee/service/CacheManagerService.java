package dev.srivatsan.employee.service;

import dev.srivatsan.employee.entity.Department;
import jakarta.annotation.PostConstruct;
import lombok.extern.slf4j.Slf4j;
import org.springframework.cache.Cache;
import org.springframework.cache.CacheManager;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;

import java.util.List;

@Slf4j
@Service
public class CacheManagerService {

    private final CacheManager cacheManager;
    private final EmployeeService service;

    public CacheManagerService(CacheManager cacheManager, EmployeeService service) {
        this.cacheManager = cacheManager;
        this.service = service;
    }

    @CacheEvict(value = "departmentsCache", allEntries = true)
    public void clearDepartmentCache() {
        log.info("CacheManagerService :: clearDepartmentCache :: Clearing All Department Cache");
    }

    @CacheEvict(value = "departmentsCache", key = "#id")
    public void clearDepartmentCache(long id) {
        log.info("CacheManagerService :: clearDepartmentCache :: Clearing Department Cache for ID: {}", id);
    }

    @Scheduled(fixedRate = 60000, initialDelay = 30000)
    public void evictAllCache() {
        log.info("CacheManagerService :: evictAllCache :: Evicting All Cache");
        cacheManager.getCacheNames().forEach(cacheName -> {
            Cache cache = cacheManager.getCache(cacheName);
            if (cache != null) {
                log.info("CacheManagerService :: evictAllCache :: Evicting Cache: {}", cacheName);
                cache.clear();
            }
        });
    }

    @PostConstruct
    public void initialize() {
        log.info("CacheManagerService :: initialize :: Initializing Departments cache");
        Cache departmentsCache = cacheManager.getCache("departmentsCache");

        List<Department> departmentDetailsList = service.getAllDepartments();
        for (Department departmentDetails : departmentDetailsList) {
            departmentsCache.put(departmentDetails.getId(), departmentDetails);
        }
        log.info("CacheManagerService :: initialize :: Departments cache initialized Successfully");
    }
}