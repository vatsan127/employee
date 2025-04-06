package dev.srivatsan.employee.entity;

import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;
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
@JsonIdentityInfo( // To avoid infinite recursion during serialization
        generator = ObjectIdGenerators.PropertyGenerator.class,
        property = "id")
@Cache(usage = CacheConcurrencyStrategy.READ_ONLY)
public class Department {
    @Id
    private long id;
    private String departmentName;
}