package dev.srivatsan.employee.entity;

import jakarta.persistence.*;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@NoArgsConstructor
@Data
@Entity
@Table(name = "employee")
public class Employee extends UniqueIdModel{
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "employee_seq")
    @SequenceGenerator(name = "employee_seq", sequenceName = "employee_sequence", allocationSize = 25)
    private Long id;
    private String name;
    private String gender;
    private int age;

    /**
     * Parent to child relationship
     * Owning side of the relationship
     */
    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "contact_id", referencedColumnName = "id")
    private ContactDetails contactDetails;

    /**
     * Parent to child relationship
     * Inverse side of the relationship
     */
    @OneToMany(mappedBy = "employee", cascade = CascadeType.ALL, orphanRemoval = true)
    private List<Task> task;

    public void setTask(List<Task> task) {
        this.task = task;
        for (Task t : task) {
            t.setEmployee(this);
        }
    }

    public void setContactDetails(ContactDetails contactDetails) {
        this.contactDetails = contactDetails;
        contactDetails.setEmployee(this);
    }

    @Override
    public String toString() {
        return "Employee [id=" + id + ", name=" + name + ", gender=" + gender + ", age=" + age +
                ", contactDetails=" + contactDetails + ", task=" + task + "]";
    }
}