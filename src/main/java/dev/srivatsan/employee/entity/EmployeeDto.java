package dev.srivatsan.employee.entity;

public record EmployeeDto(
        String name,
        String gender,
        String departmentName,
        String phone,
        String email
) {
}