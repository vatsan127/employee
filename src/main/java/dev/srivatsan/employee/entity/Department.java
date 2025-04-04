package dev.srivatsan.employee.entity;

import jakarta.persistence.*;
import lombok.Data;

@Data
@Entity
@Table(name = "department",
        schema = "employees",
        uniqueConstraints = {
                @UniqueConstraint(columnNames = {"id", "dept_name"}) // Composite Unique Constraint
        },
        indexes = {
                @Index(name = "idx_dept_id", columnList = "id")
        }
)
//@Cacheable("departments")
//@Cache(usage = CacheConcurrencyStrategy.READ_ONLY)
public class Department {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", unique = true, nullable = false)
    private String id;

    @Column(name = "dept_name", unique = true, nullable = false)
    private String deptName;
}