package fa.appcode.service;

import fa.appcode.entities.VaccineType;

import java.util.List;

public interface VaccineTypeService {
  List<VaccineType> findAllVaccineType() throws Exception;

}
