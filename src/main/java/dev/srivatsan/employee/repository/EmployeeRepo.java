package dev.srivatsan.employee.repository;

import dev.srivatsan.employee.entity.Employee;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface EmployeeRepo extends JpaRepository<Employee, Long> {

    @Query(nativeQuery = true,
            value = "select e.name, e.gender, d.department_name, c.phone, c.email from employee e \n" +
                    "join department d on e.department_id  = d.id \n" +
                    "join contact_details c on e.contact_id = c.id ;"
    )
    Page<Object[]> getEmployeeFullDetails(Pageable pageable);

}
