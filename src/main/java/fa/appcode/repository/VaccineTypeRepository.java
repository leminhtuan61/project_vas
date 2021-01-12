package fa.appcode.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import fa.appcode.entities.VaccineType;

public interface VaccineTypeRepository
    extends JpaRepository<VaccineType, Integer> {

  VaccineType findByVaccineTypeId(Integer vaccineTypeId);
}
