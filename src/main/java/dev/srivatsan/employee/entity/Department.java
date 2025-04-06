package dev.srivatsan.employee.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.persistence.UniqueConstraint;
import lombok.Data;
import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;

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