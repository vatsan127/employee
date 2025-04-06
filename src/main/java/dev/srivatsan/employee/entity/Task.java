package dev.srivatsan.employee.entity;

import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;
import jakarta.persistence.*;
import lombok.Data;

@Data
@Entity
@Table(name = "tasks")
@JsonIdentityInfo( // To avoid infinite recursion during serialization
        generator = ObjectIdGenerators.PropertyGenerator.class,
        property = "id")
public class Task {
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "task_seq")
    @SequenceGenerator(name = "task_seq", sequenceName = "task_sequence", allocationSize = 25)
    private Long id;
    private String title;
    private String description;
    private String status;

    /**
     * Child to parent relationship
     * Owning side of the relationship
     */
    @ManyToOne
    @JoinColumn(name = "employee_id", referencedColumnName = "id")
    private Employee employee;

    @Override
    public String toString() {
        return "Task [id=" + id + ", title=" + title + ", description=" + description + ", status=" + status + "]";
    }

}
