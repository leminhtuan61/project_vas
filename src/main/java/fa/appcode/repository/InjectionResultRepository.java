package fa.appcode.repository;

import fa.appcode.entities.InjectionResult;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface InjectionResultRepository
    extends JpaRepository<InjectionResult, Integer> {
  void deleteByInjectionResultId(int injectionResultId);

  InjectionResult findByInjectionResultId(Integer injectionResultId);

  void deleteAll();

  @Query("SELECT MONTH(i.injectionDate) as MONTH, COUNT(*) \n"
      + "FROM InjectionResult i \n" + "WHERE YEAR(i.injectionDate) = ?1 \n"
      + "GROUP BY MONTH(i.injectionDate)")
  List<Object[]> findChartInjectionresult(int year) throws Exception;

  @Query("SELECT v.vaccineName, i.prevention, c.fullName, i.injectionDate,  "
      + "COUNT(i.injectionDate), t.vaccineTypeName \n"
      + "FROM      Vaccine v JOIN v.injectionResults i "
      + "JOIN i.customer c LEFT JOIN v.vaccineType t\n"
      + "GROUP BY  v.vaccineName, i.prevention, c.fullName, "
      + "i.injectionDate, t.vaccineTypeName")
  List<Object[]> findReportInjectionresult() throws Exception;
}
