package fa.appcode.service;

import fa.appcode.entities.VaccineType;
import fa.appcode.repository.VaccineTypeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class VaccineTypeServiceImpl implements VaccineTypeService {
  @Autowired
  private VaccineTypeRepository vaccineTypeRepository;

  @Override
  public List<VaccineType> findAllVaccineType() {
    return vaccineTypeRepository.findAll();
  }

}
