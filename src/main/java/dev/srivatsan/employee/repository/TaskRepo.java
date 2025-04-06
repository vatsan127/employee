package dev.srivatsan.employee.repository;

import dev.srivatsan.employee.entity.Task;
import org.springframework.data.jpa.repository.JpaRepository;

public interface TaskRepo extends JpaRepository<Task, Long> {
}
