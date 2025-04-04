package dev.srivatsan.employee.entity.employee;

import jakarta.persistence.*;
import lombok.Data;

@Data
@Entity
@Table(name = "employee")
//@Table(name = "employee", schema = "employees")
public class Employee {

    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "empId_seq_gen")
    @SequenceGenerator(name = "empId_seq_gen", sequenceName = "empId_seq", allocationSize = 2)
    private long empId;

    @Column(name = "name")
    private String name;

    @Column(name = "gender")
    private String gender;

    @Column(name = "age")
    private int age;

}
