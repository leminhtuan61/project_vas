package fa.appcode.entities;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import org.springframework.context.annotation.PropertySource;
import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "INJECTION_RESULT", schema = "VACCINE")
@PropertySource("classpath:ValidationMessages.properties")
public class InjectionResult implements Serializable {

  private static final long serialVersionUID = 1L;

  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  @Column(name = "INJECTION_RESULT_ID", columnDefinition = "INT")
  private Integer injectionResultId;

  @DateTimeFormat(pattern = "yyyy-MM-dd")
  @Temporal(TemporalType.DATE)
  @Column(name = "INJECTION_DATE", columnDefinition = "DATE")
  @NotNull(message = "{msg.injectionDate.empty}")
  private Date injectionDate;

  @NotEmpty(message = "{msg.injectionPlace.empty}")
  @Column(name = "INJECTION_PLACE", columnDefinition = "VARCHAR(255)")
  private String injectionPlace;

  @DateTimeFormat(pattern = "yyyy-MM-dd")
  @Temporal(TemporalType.DATE)
  @Column(name = "NEXT_INJECTION_DATE", columnDefinition = "DATE")
  @NotNull(message = "{msg.nextInjectionDate.empty}")
  private Date nextInjectionDate;

  @NotNull(message = "{msg.numberOfInjections.empty}")
  @Min(value = 1, message = "{msg.numberOfInjections.min}")
  @Column(name = "NUMBER_OF_INJECTION", columnDefinition = "INT")
  private Integer numberOfInjection;

  @NotEmpty(message = "{msg.prevention.empty}")
  @Column(name = "PREVENTION", columnDefinition = "VARCHAR(100)")
  private String prevention;

  @NotNull(message = "{msg.customer.empty}")
  @ManyToOne(fetch = FetchType.LAZY)
  @JoinColumn(name = "CUSTOMER_ID")
  private Customer customer;

  @NotNull(message = "{msg.vaccine.empty}")
  @ManyToOne(fetch = FetchType.LAZY)
  @JoinColumn(name = "VACCINE_ID", columnDefinition = "INT")
  private Vaccine vaccine;

  public InjectionResult() {
    super();
  }

  public InjectionResult(Integer injectionResultId, Date injectionDate,
      String injectionPlace, Date nextInjectionDate, Integer numberOfInjection,
      String prevention) {
    super();
    this.injectionResultId = injectionResultId;
    this.injectionDate = injectionDate;
    this.injectionPlace = injectionPlace;
    this.nextInjectionDate = nextInjectionDate;
    this.numberOfInjection = numberOfInjection;
    this.prevention = prevention;
  }

  public InjectionResult(Date injectionDate, String injectionPlace,
      Date nextInjectionDate, Integer numberOfInjection, String prevention) {
    super();
    this.injectionDate = injectionDate;
    this.injectionPlace = injectionPlace;
    this.nextInjectionDate = nextInjectionDate;
    this.numberOfInjection = numberOfInjection;
    this.prevention = prevention;
  }

  public InjectionResult(String injectionPlace, Integer numberOfInjection,
      String prevention) {
    this.injectionPlace = injectionPlace;
    this.numberOfInjection = numberOfInjection;
    this.prevention = prevention;
  }

  public InjectionResult(Integer injectionResultId) {
    this.injectionResultId = injectionResultId;
  }

  public Integer getInjectionResultId() {
    return injectionResultId;
  }

  public void setInjectionResultId(Integer injectionResultId) {
    this.injectionResultId = injectionResultId;
  }

  public Date getInjectionDate() {
    return injectionDate;
  }

  public void setInjectionDate(Date injectionDate) {
    this.injectionDate = injectionDate;
  }

  public String getInjectionPlace() {
    return injectionPlace;
  }

  public void setInjectionPlace(String injectionPlace) {
    this.injectionPlace = injectionPlace;
  }

  public Date getNextInjectionDate() {
    return nextInjectionDate;
  }

  public void setNextInjectionDate(Date nextInjectionDate) {
    this.nextInjectionDate = nextInjectionDate;
  }

  public Integer getNumberOfInjection() {
    return numberOfInjection;
  }

  public void setNumberOfInjection(Integer numberOfInjection) {
    this.numberOfInjection = numberOfInjection;
  }

  public String getPrevention() {
    return prevention;
  }

  public void setPrevention(String prevention) {
    this.prevention = prevention;
  }

  public Customer getCustomer() {
    return customer;
  }

  public void setCustomer(Customer customer) {
    this.customer = customer;
  }

  public Vaccine getVaccine() {
    return vaccine;
  }

  public void setVaccine(Vaccine vaccine) {
    this.vaccine = vaccine;
  }

  public boolean isCorrectInjectDate() {
    return injectionDate != null && injectionDate.before(new Date())
        && injectionDate.before(nextInjectionDate);
  }

  public boolean isCorrectNextInjectDate() {
    return nextInjectionDate != null && nextInjectionDate.after(new Date())
        && nextInjectionDate.after(injectionDate);
  }

  @Override
  public String toString() {
    return "InjectionResult [injectionResultId=" + injectionResultId
        + ", injectionDate=" + injectionDate + ", injectionPlace="
        + injectionPlace + ", nextInjectionDate=" + nextInjectionDate
        + ", numberOfInjection=" + numberOfInjection + ", prevention="
        + prevention + "]";
  }

}
