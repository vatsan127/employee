package dev.srivatsan.employee.entity;

import jakarta.persistence.*;
import lombok.Data;
import org.hibernate.annotations.CacheConcurrencyStrategy;
import org.hibernate.annotations.Cache;

@Data
@Entity
@Table(name = "department",
        uniqueConstraints = {
                @UniqueConstraint(columnNames = {"id", "department_name"}) // Composite Unique Constraint
        }
)

@Cache(usage = CacheConcurrencyStrategy.READ_ONLY)
public class Department {
    @Id
    private long id;
    private String departmentName;
}