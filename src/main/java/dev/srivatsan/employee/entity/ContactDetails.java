package dev.srivatsan.employee.entity;

import jakarta.persistence.*;
import lombok.Data;

@Data
@Entity
@Table(name = "contact_details")
public class ContactDetails {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    private String phone;
    private String email;
}
