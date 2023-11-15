package com.api.employee.model;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class Employee {
    private  int empId;
    private String empName;
    private String empDept;
    private String empRole;
}
