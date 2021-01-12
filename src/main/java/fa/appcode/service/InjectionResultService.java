package fa.appcode.service;

import fa.appcode.entities.InjectionResult;

import java.util.List;

public interface InjectionResultService {
  List<InjectionResult> findAll() throws Exception;

  InjectionResult save(InjectionResult injectionResult) throws Exception;

  void delete(int injectionResultId) throws Exception;

  InjectionResult findInjectionResultById(int injectionResultId)
      throws Exception;

  void deleteAll();

  List<Object[]> findChartInjectionresult(int year) throws Exception;

  List<Object[]> findReportInjectionresult() throws Exception;
}
