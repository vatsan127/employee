package dev.srivatsan.employee.entity.employee;

import jakarta.persistence.*;
import lombok.Data;

@Data
@Entity
@Table(name = "employee", schema = "employees")
public class Employee {

/*
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "department_seq_gen")
    @SequenceGenerator(name = "department_seq_gen", sequenceName = "department_seq", allocationSize = 2)
*/


    @EmbeddedId
    private EmpCompositeKey empCompositeKey;

    private String gender;

}
