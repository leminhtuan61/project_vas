package fa.appcode.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import fa.appcode.entities.Employee;

public interface EmployeeReponsitory extends JpaRepository<Employee, String> {

  Employee findEmployeeByUsername(String username);

}
