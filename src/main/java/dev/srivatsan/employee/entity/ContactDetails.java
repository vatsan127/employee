package dev.srivatsan.employee.entity;

import jakarta.persistence.*;
import lombok.Data;

@Data
@Entity
@Table(name = "contact_details")
public class ContactDetails {

    /**
     * Child to parent relationship
     * Inverse side of the relationship
     * For Unidirectional mapping
     */
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "contact_seq")
    @SequenceGenerator(name = "contact_seq", sequenceName = "contact_sequence", allocationSize = 25)
    private Long id;
    private String phone;
    private String email;

    /**
     * Child to parent relationship
     * For Bi-directional mapping
     */
    @OneToOne(mappedBy = "contactDetails")
    private Employee employee;

    @Override
    public String toString() {
        return "ContactDetails [id=" + id + ", phone=" + phone + ", email=" + email + "]";
    }
}