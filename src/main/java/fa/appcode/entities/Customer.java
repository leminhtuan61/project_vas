package fa.appcode.entities;

import java.util.Date;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;

import org.springframework.context.annotation.PropertySource;

@Entity
@Table(name = "CUSTOMER", schema = "VACCINE")
@PropertySource("classpath:ValidationMessages.properties")
public class Customer {

  @Id
  @Column(name = "CUSTOMER_ID")
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private int customerId;

  @Pattern(regexp = "^.{0,100}$", message = "{msg.address.max}")
  @NotEmpty(message = "{msg.address.empty}")
  @Column(name = "ADDRESS")
  private String address;

  @Temporal(TemporalType.DATE)
  @Column(name = "DATE_OF_BIRTH")
  private Date dateOfBirth;

  @Pattern(regexp = "^.{0,25}$", message = "{msg.email.max}")
  @NotEmpty(message = "{msg.email.empty}")
  @Column(name = "EMAIL", columnDefinition = "VARCHAR(100)")
  private String email;

  @Pattern(regexp = "^.{0,100}$", message = "{msg.fullName.max}")
  @NotEmpty(message = "{msg.fullName.empty}")
  @Column(name = "FULL_NAME", columnDefinition = "NVARCHAR(100)")
  private String fullName;

  @NotNull(message = "{msg.gender.empty}")
  @Column(name = "GENDER")
  private Integer gender;

  @Pattern(regexp = "^.{0,10}$", message = "{msg.identityCard.max}")
  @NotEmpty(message = "{msg.identityCard.empty}")
  @Column(name = "IDENTITY_CARD", columnDefinition = "VARCHAR(12)")
  private String identityCard;

  @Pattern(regexp = "^.{0,20}$", message = "{msg.password.max}")
  @NotEmpty(message = "{msg.password.empty}")
  @Column(name = "PASSWORD")
  private String password;

  @Pattern(regexp = "^.{0,11}$", message = "{msg.phone.max}")
  @NotEmpty(message = "{msg.phone.empty}")
  @Column(name = "PHONE", columnDefinition = "VARCHAR(20)")
  private String phone;

  @Pattern(regexp = "^.{0,10}$", message = "{msg.username.max}")
  @NotEmpty(message = "{msg.username.empty}")
  @Column(name = "USERNAME")
  private String username;

  @NotEmpty(message = "{msg.captcha.empty}")
  private String captcha;

  @OneToMany(mappedBy = "customer", cascade = CascadeType.ALL)
  private Set<InjectionResult> injectionResults;

  private String displayCustomer;

  public Customer() {
    super();
  }

  public Customer(int customerId, String address, Date dateOfBirth,
      String email, String fullName, Integer gender, String identityCard,
      String password, String phone, String username) {
    super();
    this.customerId = customerId;
    this.address = address;
    this.dateOfBirth = dateOfBirth;
    this.email = email;
    this.fullName = fullName;
    this.gender = gender;
    this.identityCard = identityCard;
    this.password = password;
    this.phone = phone;
    this.username = username;
  }

  public Customer(
      @Pattern(regexp = "^.{0,100}$", message = "{msg.address.max}") 
      @NotEmpty(message = "{msg.address.empty}") String address,
      @Pattern(regexp = "^.{0,100}$", message = "{msg.fullName.max}") 
      @NotEmpty(message = "{msg.fullName.empty}") String fullName,
      @NotNull(message = "{msg.gender.empty}") Integer gender) {
    super();
    this.address = address;
    this.fullName = fullName;
    this.gender = gender;
  }

  public Customer(String address, Date dateOfBirth, String email,
      String fullName, Integer gender, String identityCard, String password,
      String phone, String username) {
    super();
    this.address = address;
    this.dateOfBirth = dateOfBirth;
    this.email = email;
    this.fullName = fullName;
    this.gender = gender;
    this.identityCard = identityCard;
    this.password = password;
    this.phone = phone;
    this.username = username;
  }

  public String getDisplayCustomer() {
    return displayCustomer;
  }

  public void setDisplayCustomer(String displayCustomer) {
    this.displayCustomer = displayCustomer;
  }

  public int getCustomerId() {
    return customerId;
  }

  public String getCaptcha() {
    return captcha;
  }

  public void setCaptcha(String captcha) {
    this.captcha = captcha;
  }

  public void setCustomerId(int customerId) {
    this.customerId = customerId;
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

  public String getFullName() {
    return fullName;
  }

  public void setFullName(String fullName) {
    this.fullName = fullName;
  }

  public Integer getGender() {
    return gender;
  }

  public void setGender(Integer gender) {
    this.gender = gender;
  }

  public String getIdentityCard() {
    return identityCard;
  }

  public void setIdentityCard(String identityCard) {
    this.identityCard = identityCard;
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

  public String getUsername() {
    return username;
  }

  public void setUsername(String username) {
    this.username = username;
  }

  public Set<InjectionResult> getInjectionResults() {
    return injectionResults;
  }

  public void setInjectionResults(Set<InjectionResult> injectionResults) {
    this.injectionResults = injectionResults;
  }

  @Override
  public String toString() {
    return "Customer [customerId=" + customerId + ", address=" + address
        + ", dateOfBirth=" + dateOfBirth + ", email=" + email + ", fullName="
        + fullName + ", gender=" + gender + ", identityCard=" + identityCard
        + ", password=" + password + ", phone=" + phone + ", username="
        + username + "]";
  }

}