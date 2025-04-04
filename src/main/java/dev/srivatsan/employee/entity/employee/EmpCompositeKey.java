package dev.srivatsan.employee.entity.employee;

import jakarta.persistence.Embeddable;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

@Data
@NoArgsConstructor
@Embeddable
public class EmpCompositeKey implements Serializable {
    private long empId;
    private String name;
}
