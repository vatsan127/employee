package dev.srivatsan.employee.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import lombok.Data;

@Data
@Entity
//@Cacheable("departments")
//@Cache(usage = CacheConcurrencyStrategy.READ_ONLY)
public class Department {

    @Id
    private String id;

    private String deptName;
}