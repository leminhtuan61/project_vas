package fa.appcode.entities;

import java.util.Date;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

@Entity
@Table(name = "EMPLOYEE", schema = "VACCINE")
public class Employee {

  @Id
  @Column(name = "EMPLOYEE_ID", columnDefinition = "VARCHAR(36)")
  private String employeeId;

  @Column(name = "ADDRESS")
  private String address;

  @Column(name = "DATE_OF_BIRTH")
  private Date dateOfBirth;

  @Column(name = "EMAIL", columnDefinition = "VARCHAR(100)")
  private String email;

  @Column(name = "EMPLOYEE_NAME", columnDefinition = "VARCHAR(100)")
  private String employeeName;

  @Column(name = "GENDER")
  private int gender;

  @Column(name = "IMAGE")
  private String image;

  @Column(name = "PASSWORD")
  private String password;

  @Column(name = "PHONE", columnDefinition = "VARCHAR(20)")
  private String phone;

  @Column(name = "POSITION", columnDefinition = "VARCHAR(100)")
  private String position;

  @Column(name = "USER_NAME")
  private String username;

  @Column(name = "WORKING_PACE")
  private String workingPlace;

  @ManyToMany(mappedBy = "employees")
  private Set<Role> roles;

  public Employee() {
    super();
  }

  public Employee(String address, Date dateOfBirth, String email,
      String employeeName, int gender, String image, String password,
      String phone, String position, String username, String workingPlace,
      Set<Role> roles) {
    super();
    this.address = address;
    this.dateOfBirth = dateOfBirth;
    this.email = email;
    this.employeeName = employeeName;
    this.gender = gender;
    this.image = image;
    this.password = password;
    this.phone = phone;
    this.position = position;
    this.username = username;
    this.workingPlace = workingPlace;
    this.roles = roles;
  }

  public Set<Role> getEmployeeRoles() {
    return roles;
  }

  public void setEmployeeRoles(Set<Role> roles) {
    this.roles = roles;
  }

  public String getEmployeeId() {
    return employeeId;
  }

  public void setEmployeeId(String employeeId) {
    this.employeeId = employeeId;
  }

  public String getAddress() {
    return address;
  }

  public void setAddress(String address) {
    this.address = address;
  }

  public Date getDateOfBirth() {
    return dateOfBirth;
  }

  public void setDateOfBirth(Date dateOfBirth) {
    this.dateOfBirth = dateOfBirth;
  }

  public String getEmail() {
    return email;
  }

  public void setEmail(String email) {
    this.email = email;
  }

  public String getEmployeeName() {
    return employeeName;
  }

  public void setEmployeeName(String employeeName) {
    this.employeeName = employeeName;
  }

  public int getGender() {
    return gender;
  }

  public void setGender(int gender) {
    this.gender = gender;
  }

  public String getImage() {
    return image;
  }

  public void setImage(String image) {
    this.image = image;
  }

  public String getPassword() {
    return password;
  }

  public void setPassword(String password) {
    this.password = password;
  }

  public String getPhone() {
    return phone;
  }

  public void setPhone(String phone) {
    this.phone = phone;
  }

  public String getPosition() {
    return position;
  }

  public void setPosition(String position) {
    this.position = position;
  }

  public String getUsername() {
    return username;
  }

  public void setUsername(String username) {
    this.username = username;
  }

  public String getWorkingPlace() {
    return workingPlace;
  }

  public void setWorkingPlace(String workingPlace) {
    this.workingPlace = workingPlace;
  }

  @Override
  public String toString() {
    return "Employee [employeeId=" + employeeId + ", address=" + address
        + ", dateOfBirth=" + dateOfBirth + ", email=" + email
        + ", employeeName=" + employeeName + ", gender=" + gender + ", image="
        + image + ", password=" + password + ", phone=" + phone + ", position="
        + position + ", username=" + username + ", workingPlace=" + workingPlace
        + "]";
  }

}
