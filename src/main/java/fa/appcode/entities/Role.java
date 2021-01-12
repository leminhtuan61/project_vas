package fa.appcode.entities;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

@Entity
@Table(name = "ROLE", schema = "VACCINE")
public class Role {

  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  @Column(name = "ROLE_ID", nullable = false)
  private Long roleId;
  @Column(name = "ROLE_NAME", length = 30, nullable = false)
  private String roleName;
  @ManyToMany(cascade = CascadeType.ALL)
  @JoinTable(name = "role_employee", schema = "VACCINE", joinColumns = {
      @JoinColumn(referencedColumnName = "ROLE_ID") }, inverseJoinColumns = {
          @JoinColumn(referencedColumnName = "EMPLOYEE_ID") })
  private Set<Employee> employees;

  public Role() {
    super();
  }

  public Role(String roleName, Set<Employee> employees) {
    super();
    this.roleName = roleName;
    this.employees = employees;
  }

  public Long getRoleId() {
    return roleId;
  }

  public void setRoleId(Long roleId) {
    this.roleId = roleId;
  }

  public String getRoleName() {
    return roleName;
  }

  public void setRoleName(String roleName) {
    this.roleName = roleName;
  }

  public Set<Employee> getEmployees() {
    return employees;
  }

  public void setEmployees(Set<Employee> employees) {
    this.employees = employees;
  }

}
