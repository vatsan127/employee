package dev.srivatsan.employee.entity;

import jakarta.persistence.*;
import lombok.Data;

@Data
@Entity
@Table(name = "employee")
public class Employee {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @Column(name = "name", length = 100, nullable = false)
    private String name;

    @Column(name = "gender", length = 1, nullable = false)
    private String gender;

    @Column(name = "age", nullable = false)
    private int age;

    @OneToOne
    @JoinColumn(name = "contact_id", referencedColumnName = "id")
    private ContactDetails contact;
}