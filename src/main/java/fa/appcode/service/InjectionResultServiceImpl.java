package fa.appcode.service;

import fa.appcode.entities.InjectionResult;
import fa.appcode.repository.InjectionResultRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

@Service
@Transactional
public class InjectionResultServiceImpl implements InjectionResultService {

  @Autowired
  private InjectionResultRepository injectionResultRepository;

  @Override
  public List<InjectionResult> findAll() {
    return injectionResultRepository.findAll();
  }

  @Override
  public InjectionResult save(InjectionResult injectionResult) {
    return injectionResultRepository.save(injectionResult);
  }

  @Override
  public void delete(int injectionResultId) {
    injectionResultRepository.deleteByInjectionResultId(injectionResultId);
  }

  @Override
  public InjectionResult findInjectionResultById(int injectionResultId) {
    return injectionResultRepository.findByInjectionResultId(injectionResultId);
  }

  @Override
  public void deleteAll() {
    injectionResultRepository.deleteAll();
  }

  @Override
  public List<Object[]> findChartInjectionresult(int year)
          throws Exception {
    return injectionResultRepository.findChartInjectionresult(year);
  }

  @Override
  public List<Object[]> findReportInjectionresult() throws Exception {
    return injectionResultRepository.findReportInjectionresult();
  }
}
