package fa.appcode.entities;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "INJECTION_SCHEDULE", schema = "VACCINE")
public class InjectionSchedule implements Serializable {

  private static final long serialVersionUID = 1L;

  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  @Column(name = "INJECTION_SCHEDULE_ID")
  private int injectionScheduleId;

  @Column(name = "DESCRIPTION", columnDefinition = "VARCHAR(1000)")
  private String description;

  @Column(name = "END_DATE")
  private Date endDate;

  @Column(name = "PLACE")
  private String place;

  @Column(name = "START_DATE")
  private Date startDate;

  @ManyToOne(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
  @JoinColumn(name = "VACCINE_ID")
  private Vaccine vaccine;

  public InjectionSchedule() {
    super();
  }

  public InjectionSchedule(int injectionScheduleId, String description,
      Date endDate, String place, Date startDate) {
    super();
    this.injectionScheduleId = injectionScheduleId;
    this.description = description;
    this.endDate = endDate;
    this.place = place;
    this.startDate = startDate;
  }

  public InjectionSchedule(String description, Date endDate, String place,
      Date startDate) {
    super();
    this.description = description;
    this.endDate = endDate;
    this.place = place;
    this.startDate = startDate;
  }

  public int getInjectionScheduleId() {
    return injectionScheduleId;
  }

  public void setInjectionScheduleId(int injectionScheduleId) {
    this.injectionScheduleId = injectionScheduleId;
  }

  public String getDescription() {
    return description;
  }

  public void setDescription(String description) {
    this.description = description;
  }

  public Date getEndDate() {
    return endDate;
  }

  public void setEndDate(Date endDate) {
    this.endDate = endDate;
  }

  public String getPlace() {
    return place;
  }

  public void setPlace(String place) {
    this.place = place;
  }

  public Date getStartDate() {
    return startDate;
  }

  public void setStartDate(Date startDate) {
    this.startDate = startDate;
  }

  public Vaccine getVaccine() {
    return vaccine;
  }

  public void setVaccine(Vaccine vaccine) {
    this.vaccine = vaccine;
  }

  @Override
  public String toString() {
    return "InjectionSchedule [injectionScheduleId=" + injectionScheduleId
        + ", description=" + description + ", endDate=" + endDate + ", place="
        + place + ", startDate=" + startDate + "]";
  }

}
