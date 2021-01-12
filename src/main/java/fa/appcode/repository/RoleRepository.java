package fa.appcode.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import fa.appcode.entities.Role;

public interface RoleRepository extends JpaRepository<Role, Long> {

  @Query("SELECT r.roleName FROM Role r "
      + "JOIN r.employees e WHERE e.employeeId =?1")
  List<String> findByRoleName(String employeeId);

}
