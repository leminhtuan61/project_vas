package fa.appcode.entities;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "VACCINE_TYPE", schema = "VACCINE")
public class VaccineType {

  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  @Column(name = "VACCINE_TYPE_ID", columnDefinition = "INT")
  private Integer vaccineTypeId;

  @Column(name = "DESCIPTION", columnDefinition = "VARCHAR(200)")
  private String description;

  @Column(name = "VACCINE_TYPE_NAME", columnDefinition = "VARCHAR(50)")
  private String vaccineTypeName;

  @OneToMany(mappedBy = "vaccineType", cascade = CascadeType.ALL)
  private Set<Vaccine> vaccines;

  public VaccineType() {
    super();
  }

  public VaccineType(Integer vaccineTypeId, String description,
      String vaccineTypeName) {
    super();
    this.vaccineTypeId = vaccineTypeId;
    this.description = description;
    this.vaccineTypeName = vaccineTypeName;
  }

  public VaccineType(String description, String vaccineTypeName) {
    super();
    this.description = description;
    this.vaccineTypeName = vaccineTypeName;
  }

  public Integer getVaccineTypeId() {
    return vaccineTypeId;
  }

  public void setVaccineTypeId(Integer vaccineTypeId) {
    this.vaccineTypeId = vaccineTypeId;
  }

  public String getDescription() {
    return description;
  }

  public void setDescription(String description) {
    this.description = description;
  }

  public String getVaccineTypeName() {
    return vaccineTypeName;
  }

  public void setVaccineTypeName(String vaccineTypeName) {
    this.vaccineTypeName = vaccineTypeName;
  }

  public Set<Vaccine> getVaccines() {
    return vaccines;
  }

  public void setVaccines(Set<Vaccine> vaccines) {
    this.vaccines = vaccines;
  }

  @Override
  public String toString() {
    return "VaccineType [vaccineTypeId=" + vaccineTypeId + ", description="
        + description + ", vaccineTypeName=" + vaccineTypeName + "]";
  }

}
