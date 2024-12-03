package dev.project.employee.repository;

import dev.project.employee.model.Employee;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface EmployeeRepository extends JpaRepository<Employee, Integer> {

    // Equals
    List<Employee> findByDepartment(String department);

    // Range
    List<Employee> findByAgeBetween(int startAge, int endAge);

    // Like
    List<Employee> findByFirstNameLike(String pattern);

    // Sorting
    List<Employee> findByDepartmentOrderByAgeAsc(String department);

    // Logical Operator
    List<Employee> findByFirstNameAndAge(String name, int age);

    // Custom Query
    @Query("SELECT e FROM Employee e WHERE e.age > :age")
    List<Employee> findEmployeesWithCustomQuery(@Param("age") int age);


}
