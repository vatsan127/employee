package com.api.employee.model;

import jakarta.validation.constraints.Size;
import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class Employee {
    private int empId;
    @Size(min = 3, message = "Name should have minimum 3 characters")
    private String empName;
    @Size(min = 3, message = "Department should have minimum 3 characters")
    private String empDept;
    @Size(min = 3, message = "Role should have minimum 3 characters")
    private String empRole;
}
