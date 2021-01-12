package fa.appcode.service;

import fa.appcode.entities.Vaccine;
import fa.appcode.repository.VaccineRepository;
import fa.appcode.repository.VaccineTypeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class VaccineServiceImpl implements VaccineService {

  @Autowired
  private VaccineRepository vaccineRepository;

  @Autowired
  private VaccineTypeRepository vaccineTypeRepository;

  @Override
  public List<Vaccine> findVaccineByVaccineType(int vaccineTypeId) {
    return vaccineRepository.findVaccineByVaccineType(
        vaccineTypeRepository.findByVaccineTypeId(vaccineTypeId));
  }

  @Override
  public List<Vaccine> findAllVaccine() {
    return vaccineRepository.findAll();
  }

  @Override
  public List<Object[]> findReportVaccine() throws Exception {
    return vaccineRepository.findReportVaccine();
  }

  @Override
  public List<Object[]> findReportVaccineChar(int year) throws Exception {
    return vaccineRepository.findReportVaccineChar(year);
  }

  @Override
  public Vaccine findVaccineById(int vaccineId) throws Exception {
    return vaccineRepository.findVaccineByVaccineId(vaccineId);
  }
}
