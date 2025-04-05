package dev.srivatsan.employee.repository;

import dev.srivatsan.employee.entity.ContactDetails;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ContactDetailsRepo extends JpaRepository<ContactDetails, Long> {
}
