package fa.appcode.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import fa.appcode.entities.Vaccine;
import fa.appcode.entities.VaccineType;

public interface VaccineRepository extends JpaRepository<Vaccine, Integer> {

  List<Vaccine> findVaccineByVaccineType(VaccineType vaccineType);

  Vaccine findVaccineByVaccineId(int vaccineId);

  @Query("SELECT v.vaccineName, t.vaccineTypeName, "
      + "COUNT(v.vaccineId), v.timeBeginNextInjection, "
      + "v.timeEndNextInjection, v.origin \n"
      + "FROM  InjectionResult i RIGHT JOIN i.vaccine v "
      + "LEFT JOIN v.vaccineType t \n"
      + "GROUP BY  v.vaccineName, t.vaccineTypeName, v.vaccineId, "
      + "v.timeBeginNextInjection, v.timeEndNextInjection, v.origin")
  List<Object[]> findReportVaccine() throws Exception;

  @Query("SELECT MONTH(i.injectionDate) as MONTH,  "
      + "COUNT(DISTINCT v.vaccineId) \n"
      + "FROM      InjectionResult i JOIN i.vaccine v\n"
      + "WHERE     YEAR(i.injectionDate) = ?1 \n"
      + "GROUP BY  MONTH(i.injectionDate)")
  List<Object[]> findReportVaccineChar(int year) throws Exception;
}
