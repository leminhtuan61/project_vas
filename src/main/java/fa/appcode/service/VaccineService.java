package fa.appcode.service;

import fa.appcode.entities.Vaccine;

import java.util.List;

public interface VaccineService {
  List<Vaccine> findVaccineByVaccineType(int vaccineTypeId);

  List<Vaccine> findAllVaccine();

  Vaccine findVaccineById(int vaccineId) throws Exception;

  List<Object[]> findReportVaccine() throws Exception;

  List<Object[]> findReportVaccineChar(int year) throws Exception;
}
