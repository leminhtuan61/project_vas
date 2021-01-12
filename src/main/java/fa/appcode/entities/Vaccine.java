package fa.appcode.entities;

import java.io.Serializable;
import java.util.Date;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name = "VACCINE", schema = "VACCINE")
public class Vaccine implements Serializable {

  private static final long serialVersionUID = 1L;

  @Id
  @Column(name = "VACCINE_ID", columnDefinition = "INT")
  private int vaccineId;

  @Column(name = "CONTRAINDICATION", columnDefinition = "VARCHAR(200)")
  private String contraindication;

  @Column(name = "INDICATION", columnDefinition = "VARCHAR(200)")
  private String indication;

  @Column(name = "NUMBER_OF_INJECTION")
  private int numberOfInjection;

  @Column(name = "ORIGIN", columnDefinition = "VARCHAR(50)")
  private String origin;

  @Column(name = "TIME_BEGIN_NEXT_INJECTION")
  private Date timeBeginNextInjection;

  @Column(name = "TIME_END_NEXT_INJECTION")
  private Date timeEndNextInjection;

  @Column(name = "USAGE", columnDefinition = "VARCHAR(200)")
  private String usage;

  @Column(name = "VACCINE_NAME", columnDefinition = "VARCHAR(100)")
  private String vaccineName;

  @OneToMany(mappedBy = "vaccine", cascade = CascadeType.ALL)
  @JsonIgnore
  private Set<InjectionSchedule> injectionSchedules;

  @OneToMany(mappedBy = "vaccine", cascade = CascadeType.ALL)
  @JsonIgnore
  private Set<InjectionResult> injectionResults;

  @ManyToOne(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
  @JoinColumn(name = "VACCINE_TYPE_ID")
  @JsonIgnore
  private VaccineType vaccineType;

  public Vaccine() {
    super();
  }

  public Vaccine(int vaccineId, String contraindication, String indication,
      int numberOfInjection, String origin, Date timeBeginNextInjection,
      Date timeEndNextInjection, String usage, String vaccineName) {
    super();
    this.vaccineId = vaccineId;
    this.contraindication = contraindication;
    this.indication = indication;
    this.numberOfInjection = numberOfInjection;
    this.origin = origin;
    this.timeBeginNextInjection = timeBeginNextInjection;
    this.timeEndNextInjection = timeEndNextInjection;
    this.usage = usage;
    this.vaccineName = vaccineName;
  }

  public Vaccine(String contraindication, String indication,
      int numberOfInjection, String origin, Date timeBeginNextInjection,
      Date timeEndNextInjection, String usage, String vaccineName) {
    super();
    this.contraindication = contraindication;
    this.indication = indication;
    this.numberOfInjection = numberOfInjection;
    this.origin = origin;
    this.timeBeginNextInjection = timeBeginNextInjection;
    this.timeEndNextInjection = timeEndNextInjection;
    this.usage = usage;
    this.vaccineName = vaccineName;
  }

  public int getVaccineId() {
    return vaccineId;
  }

  public void setVaccineId(int vaccineId) {
    this.vaccineId = vaccineId;
  }

  public String getContraindication() {
    return contraindication;
  }

  public void setContraindication(String contraindication) {
    this.contraindication = contraindication;
  }

  public String getIndication() {
    return indication;
  }

  public void setIndication(String indication) {
    this.indication = indication;
  }

  public int getNumberOfInjection() {
    return numberOfInjection;
  }

  public void setNumberOfInjection(int numberOfInjection) {
    this.numberOfInjection = numberOfInjection;
  }

  public String getOrigin() {
    return origin;
  }

  public void setOrigin(String origin) {
    this.origin = origin;
  }

  public Date getTimeBeginNextInjection() {
    return timeBeginNextInjection;
  }

  public void setTimeBeginNextInjection(Date timeBeginNextInjection) {
    this.timeBeginNextInjection = timeBeginNextInjection;
  }

  public Date getTimeEndNextInjection() {
    return timeEndNextInjection;
  }

  public void setTimeEndNextInjection(Date timeEndNextInjection) {
    this.timeEndNextInjection = timeEndNextInjection;
  }

  public String getUsage() {
    return usage;
  }

  public void setUsage(String usage) {
    this.usage = usage;
  }

  public String getVaccineName() {
    return vaccineName;
  }

  public void setVaccineName(String vaccineName) {
    this.vaccineName = vaccineName;
  }

  public Set<InjectionSchedule> getInjectionSchedules() {
    return injectionSchedules;
  }

  public void setInjectionSchedules(Set<InjectionSchedule> injectionSchedules) {
    this.injectionSchedules = injectionSchedules;
  }

  public VaccineType getVaccineType() {
    return vaccineType;
  }

  public void setVaccineType(VaccineType vaccineType) {
    this.vaccineType = vaccineType;
  }

  public Set<InjectionResult> getInjectionResults() {
    return injectionResults;
  }

  public void setInjectionResults(Set<InjectionResult> injectionResults) {
    this.injectionResults = injectionResults;
  }

  @Override
  public String toString() {
    return "Vaccine [vaccineId=" + vaccineId + ", contraindication="
        + contraindication + ", indication=" + indication
        + ", numberOfInjection=" + numberOfInjection + ", origin=" + origin
        + ", timeBeginNextInjection=" + timeBeginNextInjection
        + ", timeEndNextInjection=" + timeEndNextInjection + ", usage=" + usage
        + ", vaccineName=" + vaccineName + "]";
  }

}
